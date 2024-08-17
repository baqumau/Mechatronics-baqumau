// 2021.4
//*******************************************
//**  Copyright  (C)  WCH  2004-2023       **
//**  Web:  http://wch.cn                  **
//*******************************************
//**  DEMO for USB to uart chip CH34X/CH910X**
//**  C, VC6.0                             **
//*******************************************
//
// CH34X/CH910X系列USB转串口芯片 串口识别，动态插拔、GPIO配置、EEPROM配置函数演示程序
// 南京沁恒微电子
// 运行环境: Windows 2000/XP,Windows 7/8/10/11
// support USB chip: CH34X, CH910X
// USB => Single/Multi serial port
//

#include "stdafx.h"
#include "resource.h"
#include <stdio.h>
#include <string>

#include "LIB\\CH343PT.H"
#include "LIB\\CH342FGpio.h"
#pragma comment (lib,"LIB\\i386\\CH343PT")

//引脚所用控件组合
typedef struct _GpioCtrl
{
	ULONG GpioMask;
	ULONG EnId;
	ULONG FuncId;
	ULONG DirId;
	ULONG StaId;
}GpioCtrlS;

CHAR AfxPortName[10]="";   //存储监测到的已插入的串口名
UCHAR TempGpioCount; //GPIO数量临时变量
HANDLE AfxPortH=NULL;      
HWND AfxWndHwnd;
ULONG AfxGpioEnable,AfxGpioDir,AfxGpioSta;
UCHAR AfxIcModel;
//CHAR AfxUsbSer.ChipTypeStr[64] ="",AfxUsbSer.FwVerStr[64]="";
BOOL AfxIsSupportCfg;
ULONG AfxPortSel = 0xFF;
BOOL IsAutoOpen;
ChipPropertyS AfxUsbSer = {0};
ULONGLONG Afx348FuncSet=0,Afx348SetDirOut=0,Afx348SetDataOut=0;
//GPIO引脚所用控件组合
GpioCtrlS GpioCtrl[] = {
	{CH910x_GPIO_0, IDC_Enable_GPIO0, IDC_IoFunc_GPIO0, IDC_IoDir_GPIO0, IDC_Status_GPIO0 }, 
	{CH910x_GPIO_1, IDC_Enable_GPIO1, IDC_IoFunc_GPIO1, IDC_IoDir_GPIO1, IDC_Status_GPIO1 }, 
	{CH910x_GPIO_2, IDC_Enable_GPIO2, IDC_IoFunc_GPIO2, IDC_IoDir_GPIO2, IDC_Status_GPIO2 }, 
	{CH910x_GPIO_3, IDC_Enable_GPIO3, IDC_IoFunc_GPIO3, IDC_IoDir_GPIO3, IDC_Status_GPIO3 },
	{CH910x_GPIO_4, IDC_Enable_GPIO4, IDC_IoFunc_GPIO4, IDC_IoDir_GPIO4, IDC_Status_GPIO4 },
	{CH910x_GPIO_5, IDC_Enable_GPIO5, IDC_IoFunc_GPIO5, IDC_IoDir_GPIO5, IDC_Status_GPIO5 },
	{CH910x_GPIO_6, IDC_Enable_GPIO6, IDC_IoFunc_GPIO6, IDC_IoDir_GPIO6, IDC_Status_GPIO6 }, 
	{CH910x_GPIO_7, IDC_Enable_GPIO7, IDC_IoFunc_GPIO7, IDC_IoDir_GPIO7, IDC_Status_GPIO7 }, 
	{CH910x_GPIO_8, IDC_Enable_GPIO8, IDC_IoFunc_GPIO8, IDC_IoDir_GPIO8, IDC_Status_GPIO8 }, 
	{CH910x_GPIO_9, IDC_Enable_GPIO9, IDC_IoFunc_GPIO9, IDC_IoDir_GPIO9, IDC_Status_GPIO9 }, 
	{CH910x_GPIO_10,IDC_Enable_GPIO10,IDC_IoFunc_GPIO10,IDC_IoDir_GPIO10,IDC_Status_GPIO10},
	{CH910x_GPIO_11,IDC_Enable_GPIO11,IDC_IoFunc_GPIO11,IDC_IoDir_GPIO11,IDC_Status_GPIO11},
	{CH910x_GPIO_12,IDC_Enable_GPIO12,IDC_IoFunc_GPIO12,IDC_IoDir_GPIO12,IDC_Status_GPIO12},
	{CH910x_GPIO_13,IDC_Enable_GPIO13,IDC_IoFunc_GPIO13,IDC_IoDir_GPIO13,IDC_Status_GPIO13},
	{CH910x_GPIO_14,IDC_Enable_GPIO14,IDC_IoFunc_GPIO14,IDC_IoDir_GPIO14,IDC_Status_GPIO14},
	{CH910x_GPIO_15,IDC_Enable_GPIO15,IDC_IoFunc_GPIO15,IDC_IoDir_GPIO15,IDC_Status_GPIO15},
};

// Foward declarations of functions included in this code module:
LRESULT CALLBACK	WndProc(HWND, UINT, WPARAM, LPARAM);
PCHAR searchch341port(PLONG count);  
VOID CH341SerNotifyFunc(LONG iDevIndexAndEvent);
VOID CALLBACK CH341PT_NOTIFY_ROUTINE(LONG iDevIndexAndEvent);
BOOL ConfigGPIO();
BOOL ReadGpioConfig();
//获取GPIO引脚电平状态
BOOL ReadGPIOLatch();
//对启用GPIO功能的引脚进行电平设置
BOOL WriteGPIOLatch();
BOOL OpenPort();
VOID ClosePort();
//更新界面上的GPIO状态
VOID UpdateSelection();
BOOL ConfigEepromRead();
BOOL ConfigEepromWrite();
//EEPROM字节写
VOID EepromByteWrite();
//EEPROM字节读
VOID EepromByteRead();
//对GPIO功能和方向进行配置	
BOOL SetGpioEepromConfig();
//获取GPIO EEPROM配置值
BOOL GetGpioEepromConfig();

// 获取某个GPIO引脚电平状态,相应引脚需开启GPIO功能
VOID CH348GetGPIO();

VOID CH348SetGPIO();
// 配置GPIO的功能和I/O方向和初值
//iEnable,iFuncSet,iSetDirOut为64位变量，位序号与GPIO引脚号对应。
VOID CH348ConfigGPIO();

VOID ReadCH348GpioCfg();
//更新CH348状态
VOID UpdateCH348GpioStatus();

//输出调试信息
VOID  DbgPrint (LPCTSTR lpFormat,...)
{   
	CHAR TextBufferTmp[5120]=""; 	
	
	va_list arglist;
	va_start(arglist, lpFormat);	
	vsprintf(&TextBufferTmp[strlen(TextBufferTmp)],lpFormat,arglist);
	va_end(arglist);
	strcat(TextBufferTmp,"\r\n");
	
	SendDlgItemMessage(AfxWndHwnd,IDC_show,EM_SETSEL,0xFFFFFFFE,0xFFFFFFFE);
	SendDlgItemMessage(AfxWndHwnd,IDC_show,EM_REPLACESEL,0,(LPARAM)TextBufferTmp);
	SendDlgItemMessage(AfxWndHwnd,IDC_show,EM_SETSEL,0xFFFFFFFE,0xFFFFFFFE);	
	
	return ;
}

/*将十六进制字符转换成十进制码,数字转换成字符用ltoa()函数*/
ULONG mStrToHex(PCHAR str) 
{  
	CHAR mlen,i=0;
	UCHAR iChar=0,Char[9]="";
	UINT mBCD=0,de=1;
	mlen=strlen(str);
	memcpy(Char,str,mlen);
	for(i=mlen-1;i>=0;i--)
	{
		iChar=Char[i];
		if ( iChar >= '0' && iChar <= '9' )
			mBCD = mBCD+(iChar -'0')*de;
		else if ( iChar >= 'A' && iChar <= 'F' ) 
			mBCD =mBCD+ (iChar - 'A' + 0x0a)*de;
		else if ( iChar >= 'a' && iChar <= 'f' )
			mBCD =mBCD+ (iChar - 'a' + 0x0a)*de;
		else return(0);
		de*=16;
	}
	return(mBCD);
}

/*显示上次运行错误*/
VOID ShowLastError(LPCTSTR lpFormat,...) 
{
	DWORD LastResult=0; // pointer to variable to receive error codes	
	CHAR szSysMsg[4096] = "";
	CHAR PreBuffer[4096] = "";  	
	LastResult=GetLastError();
    {
		va_list arglist;
		va_start(arglist, lpFormat);
		vsprintf(PreBuffer,lpFormat,arglist);
		va_end(arglist);   
		
		FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM,0,LastResult,
			MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),szSysMsg,sizeof(szSysMsg),0);	
		DbgPrint("%s错误:(%d)%s",PreBuffer,LastResult,szSysMsg);
	}	
}

VOID ShowError(PCHAR FuncName,UCHAR RetVal)
{
	switch(RetVal)
	{
	case CH910x_SUCCESS:
		DbgPrint("%s操作成功",FuncName);
		break;
	case CH910x_INVALID_HANDLE:
		DbgPrint("%s出错,无效句柄",FuncName);
		break;
	case CH910x_INVALID_PARAMETER:
		DbgPrint("%s出错,无效参数",FuncName);
		break;
	case CH910x_DEVICE_IO_FAILED:
		DbgPrint("%s出错,执行失败",FuncName);
		break;
	case CH910x_FUNCTION_NOT_SUPPORTED:
		DbgPrint("%s出错,此功能不支持",FuncName);
		break;
	case CH910x_NOT_INIT:
		DbgPrint("%s未先调用初始化函数",FuncName);
		break;
	default :
		DbgPrint("%s未知错误(%X)",FuncName,RetVal);
		break;
	}
}

int APIENTRY WinMain(HINSTANCE hInstance,
                     HINSTANCE hPrevInstance,
                     LPSTR     lpCmdLine,
                     int       nCmdShow)
{
	return DialogBox(hInstance, (LPCTSTR)IDD_main, 0, (DLGPROC)WndProc);
}

//窗体消息响应函数
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	int wmId, wmEvent;
	
	switch (message) 
	{
		case WM_INITDIALOG:
			{				
				CHAR portname[10]="";
				CHAR tem[100]="";
				UCHAR j=0;

				AfxWndHwnd=hWnd;
				ltoa(CH343PT_GetVersion(),tem,10);
				SetDlgItemText(hWnd,IDC_dllver,tem);
				AfxGpioEnable = 0xFFFFFFFF;
				AfxGpioDir = 0xFFFFFFFF;
				AfxPortH = INVALID_HANDLE_VALUE;

				for(j=0;j<255;j++)
				{
					sprintf(portname,"COM%d",j+1);
					SendDlgItemMessage(hWnd,IDC_PortNum,CB_ADDSTRING,0,(LONG)portname);
				}
				SendDlgItemMessage(AfxWndHwnd,IDC_EnableDevPnPNotify,BM_CLICK,0,0 );				
				SetDlgItemText(AfxWndHwnd,IDC_EepromStartAddr,"0");
				UpdateSelection();
				
				SendDlgItemMessage(hWnd,IDC_CH348GpioGpSel,CB_ADDSTRING,0, (LPARAM)(LPCTSTR)"GPIO0-GPIO15");
				SendDlgItemMessage(hWnd,IDC_CH348GpioGpSel,CB_ADDSTRING,0, (LPARAM)(LPCTSTR)"GPIO16-GPIO31");
				SendDlgItemMessage(hWnd,IDC_CH348GpioGpSel,CB_ADDSTRING,0, (LPARAM)(LPCTSTR)"GPIO32-GPIO47");
				SendDlgItemMessage(hWnd,IDC_CH348GpioGpSel,CB_SETCURSEL,0, 0);				
			}

			break;
		case WM_COMMAND:
			wmId    = LOWORD(wParam);
			wmEvent = HIWORD(wParam);	
			// Parse the menu selections:
			switch (wmId)
			{
			    //串口全名格式为"////.//COMxx",大于com9的串口号必须要用串口全名,否则打不开"
				case IDC_CH341PtHandleIsCH341:  //通过串口特征数据来识别CH341串口
					{
						HANDLE porthandle;
						UCHAR  CH34xPortI = 0xFF;
						CHAR fullportname[66]="";
						CHAR portname[20]="";
						UCHAR j=0;

						DbgPrint("通过名称找到WCH USB串口为");
						for (j=1;j<99;j++)
						{
							sprintf((CHAR *)portname,"COM%d\0",j);                 //设备名
							sprintf((CHAR *)fullportname,"\\\\.\\%s\0",portname);  //完整的设备名
							porthandle=CreateFile((CHAR *)fullportname,
								GENERIC_READ | GENERIC_WRITE,              // 打开设备,支持重叠操作
								0,
								NULL, OPEN_EXISTING, NULL, NULL );

							if ( porthandle != INVALID_HANDLE_VALUE )
							{
								if(CH341PtHandleIsCH341(porthandle))
								{
									//获取芯片信息
									AfxIcModel = CH343PT_GetChipProperty(porthandle,&AfxUsbSer);
									DbgPrint("%s:%s,FwVer:%s",portname,AfxUsbSer.ChipTypeStr,AfxUsbSer.FwVerStr);

									CH34xPortI = j-1;
								}								
								CloseHandle(porthandle);
							}
						}
						if(CH34xPortI!=0xFF)//找到WCH USB 串口设备
						{
							SendDlgItemMessage(hWnd,IDC_PortNum,CB_SETCURSEL,CH34xPortI,0);
							UpdateSelection();							
						}
					}
					break;
				case IDC_CH341PtNameIsCH341:
					{
						UCHAR fullportname[36]="";
						CHAR portname[10]="";
						UCHAR j=0;

						DbgPrint("通过句柄找到WCH USB串口为:");	
						for (j=1;j<99;j++) {
							sprintf((CHAR *)portname,"COM%d\0",j);                 //设备名
							sprintf((CHAR *)fullportname,"\\\\.\\%s\0",portname);  //完整的设备名
							if(CH341PtNameIsCH341(fullportname))
							{
								DbgPrint(portname);	
								SendDlgItemMessage(hWnd,IDC_PortNum,CB_SETCURSEL,(j-1),0);
							}
						}
					}
                    break;
				case IDC_EnableDevPnPNotify:
					if( IsDlgButtonChecked(hWnd,IDC_EnableDevPnPNotify) == BST_CHECKED )
					{
						if(CH341PtSetDevNotify(NULL,CH341PT_NOTIFY_ROUTINE))
						{
							DbgPrint("开始监视WCH USB串口插拔");	
							IsAutoOpen = TRUE; //USB插入自动打开功能开启
						}
						else
						{
							DbgPrint("设置WCH USB串口监视失败");	
							IsAutoOpen = FALSE;  //USB插入自动打开功能关闭
						}
					}
					else
					{
						if(CH341PtSetDevNotify(NULL,NULL))
							DbgPrint("停止监视WCH USB串口插拔");	
						IsAutoOpen = FALSE; //USB插入自动打开功能关闭
					}
					break;
				case IDC_ReadGpioConfig:
					ReadGpioConfig();
					break;
				case IDC_ConfigGPIO: //配置GPIO功能
					ConfigGPIO();
					break;
				case IDC_SetGPIO: //设备GPIO状态
					WriteGPIOLatch();
					break;
				case IDC_GetGPIO: //获取GPIO状态
					ReadGPIOLatch();
					break;
				case IDC_ConfigGPIOPwOn:
					SetGpioEepromConfig();
					break;
				case IDC_GetGPIOEepromConfig:
					GetGpioEepromConfig();
					break;
				case IDC_clear:
					SetDlgItemText(hWnd,IDC_show,"");
					break;
				case IDC_OpenPort: //打开串口
					OpenPort();
					break;
				case IDC_ClosePort: //关闭串口
					ClosePort();
					break;
				case IDC_EepromRead:
					ConfigEepromRead();
					break;
				case IDC_EepromWrite:
					ConfigEepromWrite();
					break;
				case IDC_EepromByteRead:
					EepromByteRead();
					break;
				case IDC_EepromByteWrite:
					EepromByteWrite();
					break;
				case IDC_348ConfigGPIO:
					CH348ConfigGPIO();
					break;
				case IDC_348SetGPIO:
					CH348SetGPIO();
					break;
				case IDC_348GetGPIO:
					CH348GetGPIO();
					break;
				case IDC_348ReadGPIOCfg:
					ReadCH348GpioCfg();
					UpdateCH348GpioStatus();
					break;
				case IDC_CH348GpioGpSel:
					{
						ULONG Sel = 0,i;
						CHAR  FmtStr[64] = "";

						Sel = SendDlgItemMessage(hWnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
						for(i=0;i<16;i++)
						{
							sprintf(FmtStr,"%d",i+Sel*16);
							SetDlgItemText(hWnd,IDC_348GpioIndex0+i,FmtStr);
						}
						UpdateCH348GpioStatus();
					}
					break;
				case IDC_348Enable_GPIOAll:
					{
						ULONG i;
						BOOL CheckV;

						CheckV = (IsDlgButtonChecked(hWnd,IDC_348Enable_GPIOAll) == BST_CHECKED);
						for(i=0;i<16;i++)
						{
							CheckDlgButton(hWnd,IDC_348Enable_GPIO0+i,CheckV?BST_CHECKED:BST_UNCHECKED);
						}
					}
					break;
				case IDC_348IoFunc_GPIOAll:
					{
						ULONG i;
						BOOL CheckV;

						CheckV = (IsDlgButtonChecked(hWnd,IDC_348IoFunc_GPIOAll) == BST_CHECKED);
						for(i=0;i<16;i++)
						{
							CheckDlgButton(hWnd,IDC_348IoFunc_GPIO0+i,CheckV?BST_CHECKED:BST_UNCHECKED);
						}
					}
					break;
				case IDC_348IoDir_GPIOAll:
					{
						ULONG i;
						BOOL CheckV;

						CheckV = (IsDlgButtonChecked(hWnd,IDC_348IoDir_GPIOAll) == BST_CHECKED);
						for(i=0;i<16;i++)
						{
							CheckDlgButton(hWnd,IDC_348IoDir_GPIO0+i,CheckV?BST_CHECKED:BST_UNCHECKED);
						}
					}
					break;
				case IDC_348Status_GPIOAll:
					{
						ULONG i;
						BOOL CheckV;

						CheckV = (IsDlgButtonChecked(hWnd,IDC_348Status_GPIOAll) == BST_CHECKED);
						for(i=0;i<16;i++)
						{
							CheckDlgButton(hWnd,IDC_348Status_GPIO0+i,CheckV?BST_CHECKED:BST_UNCHECKED);
						}
					}
					break;
				case IDC_Enable_GPIOxx:
					{
						ULONG i;
						BOOL BtSta = (IsDlgButtonChecked(hWnd,IDC_Enable_GPIOxx)==BST_CHECKED);
						for(i=0;i<TempGpioCount;i++)
						{
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
								continue;
							CheckDlgButton(hWnd,GpioCtrl[i].EnId,BtSta);
						}	
					}
					break;
				case IDC_IoFunc_GPIOxx:
					{
						ULONG i;
						BOOL BtSta = (IsDlgButtonChecked(hWnd,IDC_IoFunc_GPIOxx)==BST_CHECKED);
						
						for(i=0;i<TempGpioCount;i++)
						{
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
								continue;
							CheckDlgButton(hWnd,GpioCtrl[i].FuncId,BtSta);
						}			
					}
					break;
				case IDC_IoDir_GPIOxx:
					{
						ULONG i;
						CHAR TempStr[256] = "";
						BOOL BtSta = (IsDlgButtonChecked(hWnd,IDC_IoDir_GPIOxx)==BST_CHECKED);
						for(i=0;i<TempGpioCount;i++)
						{
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
								continue;
							CheckDlgButton(hWnd,GpioCtrl[i].DirId,BtSta);
						}	
					}
					break;
				case IDC_Status_GPIOxx:
					{
						ULONG i;
						BOOL BtSta = (IsDlgButtonChecked(hWnd,IDC_Status_GPIOxx)==BST_CHECKED);
						for(i=0;i<TempGpioCount;i++)
						{
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
								continue;
							CheckDlgButton(hWnd,GpioCtrl[i].StaId,BtSta);
						}		
					}
					break;
				case WM_DESTROY:
					CH341PtSetDevNotify(NULL,NULL);   //防止在关闭前没有取消串口插拔监视
					ClosePort();
					DestroyWindow(hWnd);
					break;
				default:
				   return DefWindowProc(hWnd, message, wParam, lParam);
			}
			break;
		case WM_KEYUP: //模拟设备插拔事件
			LONG iDevIndexAndEvent;
			iDevIndexAndEvent=wParam;  //从中断程序中传来的串口号
			CH341SerNotifyFunc(iDevIndexAndEvent); //调用插拔事件处理程序
			break;
		case WM_DESTROY:
			PostQuitMessage(0);
			break;
   }
   return 0;
}


VOID CALLBACK CH341PT_NOTIFY_ROUTINE(LONG iDevIndexAndEvent)
{  
	//在中断回调函数中,不能对系统资源操作过多.通过窗体WM_KEYUP事件来模拟插拔事件
	PostMessage(AfxWndHwnd,WM_KEYUP,iDevIndexAndEvent,0); 
	return;
}

//设备插拔处理函数
VOID  CH341SerNotifyFunc(LONG iDevIndexAndEvent) 
{
	CHAR fullportname[10]="";
	CHAR tem[50]="";
	CHAR portname[10]="";

	if(iDevIndexAndEvent>0) //发生插拔事件的串口号
	{  //ch341串口已插上
		sprintf(portname,"COM%d\0",iDevIndexAndEvent); //端口名
		sprintf(fullportname,"\\\\.\\%s",portname); //完整的端口号(大于COM9的要用此名)
		AfxPortSel = iDevIndexAndEvent;

		DbgPrint("串口 %s 已插入",portname);			
		if(CH341PtNameIsCH341((UCHAR *)fullportname))
		{
			if( IsAutoOpen ) //串口插入自动打开
			{	
				SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_SETCURSEL,AfxPortSel-1,0);
				//打开串口
				SendDlgItemMessage(AfxWndHwnd,IDC_OpenPort,BM_CLICK,0,0);				
			}			
		}
		else
		{			
		}
	}
	else if(iDevIndexAndEvent<0)
	{
		DbgPrint("串口 COM%d 已拔出",-iDevIndexAndEvent); //中断传来的端口号为负值

		if( IsAutoOpen ) //串口插入自动打开,设备拔出后，自动关闭串口
		{
			//关闭串口
			SendDlgItemMessage(AfxWndHwnd,IDC_ClosePort,BM_CLICK,0,0);
			SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_SETCURSEL,0xFF,0);
		}		
	}
	return;
}

//打开串口
BOOL OpenPort()
{
	CHAR TempBuf[256] = "";
	CHAR PortName[50],FmtStr[64] = "";
	BOOL RetVal;
	std::string strtemp;
	//先关闭之前打开的串口
	if(AfxPortH != INVALID_HANDLE_VALUE)
		SendDlgItemMessage(AfxWndHwnd,IDC_ClosePort,BM_CLICK,0,0);

	AfxPortSel = SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_GETCURSEL,0,0);
	sprintf(PortName,"\\\\.\\COM%d",AfxPortSel+1);
	AfxPortH = CreateFile(PortName,
		GENERIC_READ | GENERIC_WRITE,// 打开设备,支持重叠操作
		0,
		NULL, OPEN_EXISTING, NULL, NULL );

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("COM%d open failure.",AfxPortSel+1);
		return FALSE;
	}
	
	AfxIcModel = CH343PT_GetChipProperty(AfxPortH,&AfxUsbSer); //获取串口芯片信息
	RetVal = (AfxIcModel!=0xFF);
	if(!RetVal)
	{	
		DbgPrint("芯片信息获取失败");
		CloseHandle(AfxPortH);
		AfxPortH = INVALID_HANDLE_VALUE;
		return FALSE;
	}
	else
	{		
		DbgPrint("芯片信息获取成功");
	}
	if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) || (AfxUsbSer.ChipType == USER_TYPE_CH9102X)) 
		TempGpioCount = AfxUsbSer.GpioCount + 1; //CH9101U没有GPIO5，CH9102X没有GPIO4，界面需禁用对应的GPIO选项
	else if(AfxUsbSer.ChipType == USER_TYPE_CH9104L)
		TempGpioCount = 6; //CH9104每个串口可操作6个GPIO
	else
		TempGpioCount = AfxUsbSer.GpioCount;

	//向组框中添加配置的GPIO芯片型号信息
	strtemp += AfxUsbSer.ChipTypeStr;
	if(AfxUsbSer.ChipType == USER_TYPE_CH9104L)
		sprintf(TempBuf," GPIO%d-%d 设置(谨慎操作, 防止修改I/O方向引起短路)",AfxUsbSer.PortIndex*10, AfxUsbSer.PortIndex*10+5);
	else
		sprintf(TempBuf," GPIO(%d)设置(谨慎操作, 防止修改I/O方向引起短路)",AfxUsbSer.GpioCount);
	strtemp += TempBuf;
	if((AfxUsbSer.ChipType == USER_TYPE_CH348L) || (AfxUsbSer.ChipType == USER_TYPE_CH348Q))
		SetDlgItemText(AfxWndHwnd,65530,strtemp.c_str()); //显示CH348L、CH348Q的GPIO信息
	else
		SetDlgItemText(AfxWndHwnd,65500,strtemp.c_str());
	DbgPrint("COM%d %s",AfxPortSel+1,RetVal?"is opened.":"open failure.");
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
		RetVal = CH342F_GpioInit(AfxPortH, FALSE, 0, 0); //启用GPIO功能并初始化该功能
	//读取GPIO功能和方向配置信息	
	PostMessage(GetDlgItem(AfxWndHwnd,IDC_ReadGpioConfig),BM_CLICK,0,0);
	//读取GPIO功能的引脚值
	PostMessage(GetDlgItem(AfxWndHwnd,IDC_GetGPIO),BM_CLICK,0,0);
	//更新界面信息
	UpdateSelection();		

	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_PortNum),FALSE );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_CH341PtHandleIsCH341),FALSE );

	return RetVal;
}

//关闭串口
VOID ClosePort()
{
	UCHAR i;
	
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
		CH342F_GpioDeInit(AfxPortH); //关闭串口前需调用此函数，关闭GPIO功能
	if(AfxPortH != INVALID_HANDLE_VALUE)
	{		
		CloseHandle(AfxPortH);
		AfxPortH = INVALID_HANDLE_VALUE;
		DbgPrint("Port is closed.");
	}
	else
	{
		DbgPrint("Port is not open.");
	}
	AfxIcModel = 0xFF;	
	AfxPortSel = 0xFF;	
	//更新界面
	UpdateSelection();
	//禁用并取消勾选CheckBox控件
	for(i=0;i<16;i++)
	{		
		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].EnId),FALSE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].EnId,BST_UNCHECKED );
				
		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].FuncId),FALSE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].FuncId, BST_UNCHECKED );
				
		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].DirId),FALSE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].DirId, BST_UNCHECKED );			
				
		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].StaId),FALSE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, BST_UNCHECKED );
	}
	SetDlgItemText(AfxWndHwnd,65500,"CH910X/CH344 GPIO设置(谨慎操作, 防止修改I/O方向引起短路)");
	SetDlgItemText(AfxWndHwnd,65530,"CH348Gpio");
}

//更新界面上的GPIO状态
VOID UpdateSelection()
{
	UCHAR i;
	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		ZeroMemory(&AfxUsbSer,sizeof(AfxUsbSer));

		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ClosePort),FALSE );		
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_CH341PtHandleIsCH341),TRUE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_PortNum),TRUE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_OpenPort),TRUE );
	}
	else
	{
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ClosePort),TRUE );		
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_CH341PtHandleIsCH341),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_PortNum),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_OpenPort),FALSE );
	}
	
	//使能EERPOM操作按钮
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromByteRead),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromByteWrite),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromRead),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromWrite),AfxUsbSer.IsEmbbedEeprom );	

	//使能GPIO操作按钮
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ReadGpioConfig),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ConfigGPIO),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_SetGPIO),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_GetGPIO),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_SetGPIOEepromConfig),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_GetGPIOEepromConfig),AfxUsbSer.GpioCount );

	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_Enable_GPIOxx),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_IoFunc_GPIOxx),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_IoDir_GPIOxx),AfxUsbSer.GpioCount );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_Status_GPIOxx),AfxUsbSer.GpioCount );

	if(AfxIcModel != 0)
	{
		CHAR FmtStr[256] = "";
		CHAR TempStr[256] = "";
		if(AfxPortH != INVALID_HANDLE_VALUE)
		{
			sprintf(&FmtStr[strlen(FmtStr)],"芯片型号:%s,序号:%d",AfxUsbSer.ChipTypeStr,AfxUsbSer.PortIndex);
			if(AfxUsbSer.GpioCount)
			{
				sprintf(&FmtStr[strlen(FmtStr)],",支持%d个GPIO",AfxUsbSer.GpioCount);
			}
				
			if(AfxUsbSer.IsEmbbedEeprom)
				sprintf(&FmtStr[strlen(FmtStr)],",支持芯片信息EEPROM配置",AfxUsbSer.GpioCount);
			
			if(AfxUsbSer.IsSupportMcuBootCtrl)
				sprintf(&FmtStr[strlen(FmtStr)],",支持MCU下载模式控制",AfxUsbSer.IsSupportMcuBootCtrl);
			
			SetDlgItemText(AfxWndHwnd,IDC_ChipType,FmtStr);		
			for(i=0;i<TempGpioCount;i++)
			{
				if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
					continue;
				if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
					continue;
				if(AfxUsbSer.ChipType == USER_TYPE_CH9104L)
					sprintf(&FmtStr[0],"GPIO%d",i+AfxUsbSer.PortIndex*10);
				else
					sprintf(&FmtStr[0],"GPIO%d",i);
				SetDlgItemText(AfxWndHwnd,GpioCtrl[i].EnId,FmtStr );

				EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].EnId),TRUE );
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].EnId,BST_CHECKED );
				
				EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].FuncId),TRUE );
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].FuncId, (AfxGpioEnable&GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED );
				
				EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].DirId),TRUE );
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].DirId, ( AfxGpioDir & GpioCtrl[i].GpioMask )?BST_CHECKED:BST_UNCHECKED );			
				
				EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].StaId),TRUE );
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, ( AfxGpioSta & GpioCtrl[i].GpioMask )?BST_CHECKED:BST_UNCHECKED );
			}
		}
		else
		{
			SetDlgItemText(AfxWndHwnd,IDC_ChipType,"请先打开串口");		
		}
		
	}
	else
	{
		SetDlgItemText(AfxWndHwnd,IDC_ChipType,"请先打开串口:");	
		for(i=0;i<12;i++)
		{
			EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].FuncId),FALSE );
			EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].DirId),FALSE );
			EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].StaId),FALSE );
			EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].EnId),FALSE );			
		}
	}
	if( (AfxUsbSer.ChipType&0xF0) == USER_TYPE_CH348L )//CH348L/Q
	{
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ReadGpioConfig),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_ConfigGPIO),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_SetGPIO),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_GetGPIO),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_SetGPIOEepromConfig),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_GetGPIOEepromConfig),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromRead),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromWrite),FALSE );

		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348ReadGPIOCfg),TRUE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348ConfigGPIO),TRUE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348SetGPIO),TRUE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348GetGPIO),TRUE );
	}
	else
	{
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348ReadGPIOCfg),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348ConfigGPIO),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348SetGPIO),FALSE );
		EnableWindow( GetDlgItem(AfxWndHwnd,IDC_348GetGPIO),FALSE );
	}
}

//GPIO功能和方向实时配置，此功能掉电后会失效
BOOL ConfigGPIO()
{
	std::string tempStr;
	int errorCount = 0;
	int errorIndex[6];
	ULONG iEnable = 0, IODir = 0, iFuncSet = 0, i, IOSta = 0;
	UCHAR RetVal = 0;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("先打开串口后才能配置");
		return FALSE;
	}

	//从界面获取GPIO配置值
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
			continue;
		//GPIO0	功能和方向配置
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //GPIO0使用
		{
			iEnable |= GpioCtrl[i].GpioMask;  //GPIO设置有效位
			if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].FuncId) == BST_CHECKED )    //GPIO0引脚设为 GPIO 功能
			{
				iFuncSet |= GpioCtrl[i].GpioMask;  //引脚功能为GPIO
				if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId) == BST_CHECKED ) //输出方向
				{
					IODir |= GpioCtrl[i].GpioMask; //GPIO 输出
					if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].StaId) == BST_CHECKED ) //输出方向
					{
						IOSta |= GpioCtrl[i].GpioMask; //GPIO 输出
					}
					else
						IOSta &= ~GpioCtrl[i].GpioMask; //GPIO 输出
				}
				else
					IODir &= ~GpioCtrl[i].GpioMask; //GPIO 输入
			}
			else //引脚功能为芯片默认功能
				iFuncSet &= ~GpioCtrl[i].GpioMask;
		}
	}
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		tempStr += "CH342F的";
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO1) == BST_UNCHECKED)
		{
			tempStr += "GPIO1，";
			errorIndex[errorCount] = IDC_IoDir_GPIO1;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO3) == BST_UNCHECKED)
		{
			tempStr += "GPIO3，";
			errorIndex[errorCount] = IDC_IoDir_GPIO3;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO7) == BST_UNCHECKED)
		{
			tempStr += "GPIO7，";
			errorIndex[errorCount] = IDC_IoDir_GPIO7;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO9) == BST_UNCHECKED)
		{
			tempStr += "GPIO9，";
			errorIndex[errorCount] = IDC_IoDir_GPIO9;
			errorCount++;
		}
		if(errorCount++)
		{
			tempStr += "IO方向不能设置为输入，只能设置为输出，请重新配置！";
			MessageBox(AfxWndHwnd, tempStr.c_str(), "CH343PtDemo", MB_ICONERROR);
			DbgPrint(tempStr.c_str());
			for(i=0; i<errorCount; i++)
			{
				CheckDlgButton(AfxWndHwnd, errorIndex[i], BST_CHECKED);
			}
			errorCount = 0;
			RetVal = CH910x_FUNCTION_NOT_SUPPORTED;
			return RetVal;
		}
		RetVal = CH342F_GpioInit(AfxPortH,TRUE,IODir,IOSta);
		if(RetVal==CH910x_SUCCESS) //设置成功
		{
			AfxGpioEnable = iFuncSet; //保存状态
			AfxGpioDir = IODir;
			DbgPrint("CH342F_GpioInit功能和方向已设置成功");
			//读取GPIO的值
		}
		else //设置失败
		{
			ShowError("CH342F_GpioInit",RetVal);
		}
	}
	else
	{
		//向芯片发送配置值
		//CH9104每个串口只能操作6个GPIO，GPIO实际引脚号为串口序号（AfxUsbSer.PortIndex）*10+GPIO号。如第一串口，对应的是GPIO0-5，如第二串口，对应的是GPIO10-15
		RetVal = CH910x_GpioConfig(AfxPortH,&AfxUsbSer,iEnable,iFuncSet,IODir);
		if(RetVal==CH910x_SUCCESS) //设置成功
		{
			AfxGpioEnable = iFuncSet; //保存状态
			AfxGpioDir = IODir;
			DbgPrint("CH910x_GpioConfig功能和方向已设置成功");
			//读取GPIO的值
		}
		else //设置失败
		{
			ShowError("CH910x_GpioConfig",RetVal);
		}
	}
	return (RetVal==CH910x_SUCCESS);
}

//读GPIO配置值
BOOL ReadGpioConfig()
{
	UCHAR RetVal;
	
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		RetVal = CH342F_GetGpioConfig(AfxPortH,&AfxGpioDir,&AfxGpioSta);
		AfxGpioEnable = 0xFFF;
		if( RetVal != CH910x_SUCCESS )
		{
			ShowError("CH342F_GetGpioConfig",RetVal);
		}
	}
	else
	{
		//CH9104每个串口只能操作6个GPIO，GPIO实际引脚号为串口序号（AfxUsbSer.PortIndex）*10+GPIO号。如第一串口，对应的是GPIO0-5，如第二串口，对应的是GPIO10-15
		RetVal = CH910x_GetGpioConfig(AfxPortH,&AfxUsbSer,&AfxGpioEnable,&AfxGpioDir,&AfxGpioSta);
		if( RetVal != CH910x_SUCCESS )
		{
			ShowError("CH910x_GetGpioConfig",RetVal);
		}		
	}
	UpdateSelection();
	return TRUE;
}

//对启用GPIO 输出功能的引脚进行电平设置
BOOL WriteGPIOLatch()
{	
	ULONG iEnable = 0,iSetDataOut = 0,i;
	UCHAR RetVal;
	
	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("先打开串口后才能进行IO读写");
		return FALSE;
	}
	//对选中的引脚功能为GPIO 输出脚进行电平设置，GpioMask = CH910x_GPIO_X，头文件有定义
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
			continue;
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //设置GPIO电平
		{
			if( (AfxGpioEnable & GpioCtrl[i].GpioMask)&& //引脚为GPIO功能
				(AfxGpioDir & GpioCtrl[i].GpioMask) )    //引脚方向为输出
			{
				iEnable |= GpioCtrl[i].GpioMask;    //启用GPIO引脚电平设置
				if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].StaId) == BST_CHECKED )
					iSetDataOut |= GpioCtrl[i].GpioMask;//CH910x_GPIO_X;
				else
					iSetDataOut &= ~GpioCtrl[i].GpioMask;//CH910x_GPIO_X;
			}
		}
	}
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		RetVal = CH342F_GpioSet(AfxPortH,iEnable,iSetDataOut);
		if(RetVal = CH910x_SUCCESS)
		{
			DbgPrint("CH342F_GpioSet succ");
		}
		else
		{
			ShowError("CH342F_GpioSet",RetVal);
		}
		return ( RetVal == CH910x_SUCCESS );
	}
	else
	{
		//设置电平
		//CH9104每个串口只能操作6个GPIO，GPIO实际引脚号为串口序号（AfxUsbSer.PortIndex）*10+GPIO号。如第一串口，对应的是GPIO0-5，如第二串口，对应的是GPIO10-15
		RetVal = CH910x_GpioSet(AfxPortH,&AfxUsbSer,iEnable,iSetDataOut);
		if(RetVal == CH910x_SUCCESS)
		{
			DbgPrint("CH910x_GpioSet succ");
		}
		else
		{
			ShowError("CH910x_GpioSet",RetVal);
		}
	}
	return RetVal;
}

//获取GPIO引脚电平状态
BOOL ReadGPIOLatch()
{
	ULONG iStatus = 0,i;
	UCHAR RetVal = 0;
	
	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("先打开串口后才能配置");
		return FALSE;
	}
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		RetVal = CH342F_GpioGet(AfxPortH,&iStatus);
	}
	else
	{
		//读GPIO引脚电平
		//CH9104每个串口只能操作6个GPIO，GPIO实际引脚号为串口序号（AfxUsbSer.PortIndex）*10+GPIO号。如第一串口，对应的是GPIO0-5，如第二串口，对应的是GPIO10-15
		RetVal = CH910x_GpioGet(AfxPortH,&AfxUsbSer,&iStatus);
		AfxGpioSta = iStatus;
	}
	//显示GPIO状态
	if(RetVal == CH910x_SUCCESS )
	{	
		if( AfxUsbSer.ChipType == USER_TYPE_CH344L ) //CH344芯片,返回GPIO输入脚状态
		{
			for(i=0;i<AfxUsbSer.GpioCount;i++)
			{
				if( (IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId)==BST_CHECKED) && (IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId)==BST_UNCHECKED ) )
					CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, (iStatus&GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED ); //位为1表示高电平,位为0表示低电平
			}
		}
		else
		{
			for(i=0;i<TempGpioCount;i++)
			{
				if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
					continue;
				if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
					continue;
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, (iStatus&GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED ); //位为1表示高电平,位为0表示低电平
			}
		}
		if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
			DbgPrint("CH342F_GpioGet值已获取");
		else	
			DbgPrint("CH910x_GpioGet GPIO值已获取");
	}
	else
	{
		if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
			ShowError("CH342F_GpioGet",RetVal);
		else
			ShowError("CH910x_GpioGet",RetVal);
	}

	return RetVal;
}

//读芯片配置
BOOL ConfigEepromRead()
{
	ULONG DataLen=0,i;    //要读取的数据长度
	UCHAR DataBuf[256]="";
	UCHAR Value;
	CHAR  FmtStr[2048] = "";
	BOOL  RetVal = FALSE;	

	//需要先进行EEPROM读写配置模式,主要是指定串口波特率，操作完成后需调用CH343PT_ExitConfigMode退出
	if( !CH343PT_EnterConfigMode(AfxPortH) )
	{
		DbgPrint("CH343PT_EnterConfigMode failure.");
		return FALSE;
	}
	if(AfxIcModel==USER_TYPE_CH340)
		DataLen = sizeof(USERCFG_340);
	else
		DataLen = sizeof(USERCFG_343);
	
	//读配置信息
	if( !CH343PT_ReadDevConfig(AfxPortH,&DataLen,DataBuf) )
		DbgPrint("CH343PT_ReadDevConfig failure.");
	else
	{
		DbgPrint("CH343PT_ReadDevConfig succ.");
		//16进制显示
		/*
		for(i=0;i<DataLen;i++)
		{		
			sprintf(&FmtStr[strlen(FmtStr)],"%02X ",DataBuf[i]);					
		}
		*/
		for(i=0; i<137; i++)
		{
			if(CH343PT_ReadCfgEeprom_Byte(AfxPortH, 0x00 + i, &Value))
			{
				sprintf(&FmtStr[strlen(FmtStr)],"%02X ",Value);
			}
		}
		SetDlgItemText(AfxWndHwnd,IDC_CfgEepromData,FmtStr);
		RetVal = TRUE;
	}

//Exit:
	CH343PT_ExitConfigMode(AfxPortH);
	return RetVal;
}

//写芯片配置信息
BOOL ConfigEepromWrite()
{
	ULONG DataLen=0,i,StrLen;
	UCHAR DataBuf[256]="";
	CHAR  FmtStr[2048] = "",ValStr[10] = "";
	BOOL  RetVal = FALSE;

	//需要先进行EEPROM读写配置模式,主要是指定串口波特率，操作完成后需调用CH343PT_ExitConfigMode退出
	if( !CH343PT_EnterConfigMode(AfxPortH) )
	{
		DbgPrint("CH343PT_EnterConfigMode failure.");
		return FALSE;
	}

	//取配置数据
	DataLen = 0;
	StrLen = GetDlgItemText(AfxWndHwnd,IDC_CfgEepromData,FmtStr,sizeof(FmtStr));	
	for(i=0;i<StrLen;i+=3)
	{		
		memcpy(&ValStr[0],&FmtStr[i],2);
		
		DataBuf[DataLen] = (UCHAR)mStrToHex(ValStr);
		DataLen++;
	}	
	//长度判断
	if(AfxIcModel==USER_TYPE_CH340)
	{
		if(DataLen > sizeof(USERCFG_340))
			DataLen = sizeof(USERCFG_340);
	}
	else
	{
		//if(DataLen > sizeof(USERCFG_343))
		//	DataLen = sizeof(USERCFG_343);
	}
	
	//写入EEPROM
	if( !CH343PT_WriteDevConfig(AfxPortH,DataLen,DataBuf) )
		DbgPrint("CH343PT_WriteDevConfig failure.");
	else
	{
		DbgPrint("CH343PT_WriteDevConfig succ.");		
		RetVal = TRUE;
	}

//Exit:	
	CH343PT_ExitConfigMode(AfxPortH);
	return RetVal;
}

//EEPROM字节读
VOID EepromByteRead()
{
	UCHAR Value;
	UCHAR Addr;
	CHAR  FmtStr[128] = "";

	//字节读地址
	GetDlgItemText(AfxWndHwnd,IDC_EepromStartAddr,&FmtStr[0],3); //取2个字符加一结尾符
	Addr = (UCHAR)mStrToHex(FmtStr);

	if( (AfxUsbSer.ChipType&0xF0) == USER_TYPE_CH348L) //CH348L/Q
	{
		if(CH348_ReadCfgEeprom_Byte(AfxPortH,&AfxUsbSer,Addr,&Value))
		{
			DbgPrint("Read succ,CfgEeprom[%02X]:%02X",Addr,Value);
			sprintf(FmtStr,"%02X",Value);
			SetDlgItemText(AfxWndHwnd,IDC_EepromData,FmtStr);
		}
		else
			DbgPrint("Read failure");
	}
	else
	{
		if( !CH343PT_EnterConfigMode(AfxPortH) )
		{
			DbgPrint("CH343PT_EnterConfigMode failure.");
			return;
		}
		if( CH343PT_ReadCfgEeprom_Byte(AfxPortH,Addr,&Value) )
		{
			DbgPrint("Read succ,CfgEeprom[%02X]:%02X",Addr,Value);
			sprintf(FmtStr,"%02X",Value);
			SetDlgItemText(AfxWndHwnd,IDC_EepromData,FmtStr);
		}
		else
			DbgPrint("Read failure");
		
		//Exit:	
		CH343PT_ExitConfigMode(AfxPortH);
	}
	return;	
}

//EEPROM字节写
VOID EepromByteWrite()
{
	UCHAR Value;
	ULONG Addr;
	CHAR  FmtStr[128] = "";

	GetDlgItemText(AfxWndHwnd,IDC_EepromStartAddr,&FmtStr[0],3); //取2个字符加一结尾符
	Addr = mStrToHex(FmtStr);	

	GetDlgItemText(AfxWndHwnd,IDC_EepromData,&FmtStr[0],3); //取2个字符加一结尾符
	Value = (UCHAR)mStrToHex(FmtStr);

	if( (AfxUsbSer.ChipType&0xF0) == USER_TYPE_CH348L) //CH344L/Q
	{
		if( CH348_WriteCfgEeprom_Byte(AfxPortH,&AfxUsbSer,Addr,Value) )
			DbgPrint("CH348_WriteCfgEeprom_Byte succ,CfgEeprom[%02X]:%02X",Addr,Value);				
		else
			DbgPrint("CH348_WriteCfgEeprom_Byte failure,CfgEeprom[%02X]:%02X",Addr,Value);
	}
	else
	{
		if( !CH343PT_EnterConfigMode(AfxPortH) )
		{
			DbgPrint("CH343PT_EnterConfigMode failure.");
			return;
		}
		
		if( CH343PT_WriteCfgEeprom_Byte(AfxPortH,Addr,Value) )
		{
			DbgPrint("EepromByteWrite succ,CfgEeprom[%02X]:%02X",Addr,Value);		
		}
		else
			DbgPrint("EepromByteWrite failure,CfgEeprom[%02X]:%02X",Addr,Value);
		
		//Exit:	
		CH343PT_ExitConfigMode(AfxPortH);
	}
	return;
}

//设置芯片EEPROM内GPIO配置，芯片上电时生效。芯片初始化时会读取并初始化GPIO功能、方向、状态。
//!!!此功能请慎用，使用前请务必确认好引脚方向与电路设计需求是否一致
BOOL SetGpioEepromConfig()
{
	ULONG iEnable = 0,IODir = 0,IOSta = 0,iFuncSet  = 0,i,GpioSetBitMask = 0;
	UCHAR RetVal = 0;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("先打开串口后才能配置");
		return FALSE;
	}

	if( ( AfxIcModel != USER_TYPE_CH9102F) &&
		( AfxIcModel != USER_TYPE_CH9101U) &&
		( AfxIcModel != USER_TYPE_CH9101H) )
	{
		DbgPrint("不支持GPIO EEPROM配置");
		return FALSE;
	}

	//从界面获取GPIO配置值
	for(i=0;i<TempGpioCount;i++)
	{
		GpioSetBitMask = GpioCtrl[i].GpioMask; //GPIO设置位掩码CH910x_GPIO_X
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
			continue;
		//GPIO0	功能/方向/电平配置
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //GPIO0设置使用
		{  
			iEnable |= GpioSetBitMask;//CH910x_GPIO_0;
			if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].FuncId) == BST_CHECKED )    //GPIO0引脚功能：GPIO 功能
			{
				iFuncSet |= GpioSetBitMask;  //GPIO功能
				if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId) == BST_CHECKED ) //GPIO输出
				{
					IODir |= GpioSetBitMask; //GPIO 输出
					if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].StaId) == BST_CHECKED ) //高电平
						IOSta |= GpioSetBitMask; //GPIO高电平
					else
						IOSta &= ~GpioSetBitMask; //GPIO低电平
				}
				else
					IODir &= ~GpioSetBitMask; //GPIO 输入
			}
			else //GPIO0引脚功能为芯片默认功能
				iEnable &= ~GpioSetBitMask;
		}
	}

	//先开启GPIO EEPROM配置有效位
	CH910x_EnableGpioEepromConfig(AfxPortH,TRUE);
	//向EEPROM写入GPIO配置数据,上电时会芯片自动加载
	RetVal = CH910x_SetGpioEepromConfig(AfxPortH,iEnable,iFuncSet,IODir,IOSta,TRUE,NULL);
	//CH910x_EnableGpioEepromConfig(AfxPortH,FALSE); //debug

	if(RetVal == CH910x_SUCCESS ) //设置成功
	{	
		DbgPrint("CCH910x_SetGpioEepromConfig succ");		
	}
	else //设置失败
	{
		ShowError("CH910x_SetGpioEepromConfig",RetVal);
	}
	
	return (RetVal);
}

//获取GPIO EEPROM配置值
BOOL GetGpioEepromConfig()
{
	ULONG iFuncSet = 0,iSetDirOut = 0,iSetDataOut = 0,i;
	UCHAR RetVal;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("先打开串口后才能配置");
		return FALSE;
	}

	if( ( AfxIcModel != USER_TYPE_CH9102F) &&
		( AfxIcModel != USER_TYPE_CH9101U) &&
		( AfxIcModel != USER_TYPE_CH9101H) )
	{
		DbgPrint("不支持GPIO EEPROM配置");
		return FALSE;
	}

	RetVal = CH910x_GetGpioEepromConfig(AfxPortH,&iFuncSet,&iSetDirOut,&iSetDataOut);
	if( RetVal != CH910x_SUCCESS )
	{
		ShowError("CH910x_GetGpioEepromConfig",RetVal);
		return FALSE;
	}

	//显示EEPROM配置信息
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U禁用GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X禁用GPIO4
			continue;
		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].EnId),TRUE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].EnId,BST_CHECKED );

		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].FuncId),TRUE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].FuncId, (iFuncSet & GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED );

		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].DirId),TRUE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].DirId, ( iSetDirOut & GpioCtrl[i].GpioMask )?BST_CHECKED:BST_UNCHECKED );			

		EnableWindow( GetDlgItem(AfxWndHwnd,GpioCtrl[i].StaId),TRUE );
		CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, ( iSetDataOut & GpioCtrl[i].GpioMask )?BST_CHECKED:BST_UNCHECKED );
	}

	return TRUE;
}

// 配置GPIO的功能和I/O方向和初值
//iEnable,iFuncSet,iSetDirOut为64位变量，位序号与GPIO引脚号对应。
VOID CH348ConfigGPIO()
{
	ULONG i,RetVal;	
	ULONGLONG GpSel,GpioMask;

	ULONGLONG iFuncSet = 0;       // 功能设置:某位值为0,表示对应引脚为芯片默认功能使用;为1,表示对应引脚作为GPIO功能使用;
	ULONGLONG iSetDirOut = 0;     // GPIO脚方向设置:某位为0表示对应引脚方向为输入;某位为1表示对应引脚方向为输出	
	ULONGLONG iSetDataOut = 0;    // IO输出数据,如果GPIO方向为输出,那么某位清0时对应引脚输出低电平,某位置1时对应引脚输出高电平
	ULONGLONG iEnable = 0;        // 位使能:以位对应引脚号,位0对应GPIO0,位1对应GPIO1;某位为1,表示iGpioFunc,iSetDirOut对应位有效											 

	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16); //GPIO位掩码
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Enable_GPIO0+i)==BST_CHECKED)
		{
			iEnable |= GpioMask; //位使能
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoFunc_GPIO0+i)==BST_CHECKED)
				iFuncSet |= GpioMask;
			else
				iFuncSet &= ~GpioMask;

			//IO方向
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoDir_GPIO0+i)==BST_CHECKED)
				iSetDirOut |= GpioMask;
			else
				iSetDirOut &= ~GpioMask;

			//IO输出初值
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Status_GPIO0+i)==BST_CHECKED)
				iSetDataOut |= GpioMask;
			else
				iSetDataOut &= ~GpioMask;
		}
		else
			iEnable &= ~GpioMask;
	}
	RetVal = CH348_GpioConfig(AfxPortH,&AfxUsbSer,iEnable,iFuncSet,iSetDirOut,iSetDataOut);
	ShowError("CH348_GpioConfig",RetVal);
	if(RetVal==CH910x_SUCCESS)//更新GPIO状态
	{
		SendDlgItemMessage(AfxWndHwnd,IDC_348ReadGPIOCfg,BM_CLICK,0,0);
	}

	return;
}

VOID CH348SetGPIO()
{
	ULONGLONG       iGpioMIndex = 0;     // GPIO序号掩码，位0-63
	ULONGLONG		iGpioMLevel = 0;      // GPIO电平掩码，与上iGpioMIndex位置对应。1：高电平，0：低电平	ULONG i;
	ULONG i,GpioC = 0;
	UCHAR iGpioIndex,iGpioLevel,RetVal;	
	ULONGLONG GpioMask = 0,GpSel;
	
	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16);
		
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoDir_GPIO0+i)==BST_CHECKED)//只有输出脚才能设置
		{
			GpioC++;
			iGpioMIndex |= (GpioMask); //GPIO序号
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Status_GPIO0+i)==BST_CHECKED) //高电平
			{
				iGpioMLevel |= (GpioMask); //GPIO电平
			}
			else //低电平
			{
				iGpioMLevel &= ~(GpioMask);
			}
		}
	}
	if(GpioC == 0) //批量设置
		RetVal = CH348_GpioMSet(AfxPortH,&AfxUsbSer,iGpioMIndex,iGpioMLevel);
	else if(GpioC>1) //批量设置
		RetVal = CH348_GpioMSet(AfxPortH,&AfxUsbSer,iGpioMIndex,iGpioMLevel);
	else if(GpioC==1) //单个设置
	{
		for(i=0;i<16;i++)
		{
			if( iGpioMIndex&&(1<<i) )  //当前单个串口号
			{
				iGpioIndex = (UCHAR)(i+16*GpSel);
				iGpioLevel = (iGpioMLevel>0);
				
				RetVal = CH348_GpioSet(AfxPortH,&AfxUsbSer,iGpioIndex,iGpioLevel);
				break;
			}
		}
	}
	if(RetVal==CH910x_SUCCESS)//更新GPIO状态
	{
		SendDlgItemMessage(AfxWndHwnd,IDC_348ReadGPIOCfg,BM_CLICK,0,0);
	}
	ShowError("CH348_GpioSet",RetVal);
	return;
}

// 获取某个GPIO引脚电平状态,相应引脚需开启GPIO功能
VOID CH348GetGPIO()
{
	ULONGLONG        iGpioMIndex=0;     // GPIO序号掩码，位0-63
    ULONGLONG	   	 GpioMLevel=0;
	UCHAR  RetVal,i;
	ULONGLONG GpioMask = 0,GpSel;

	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16); //GPIO位掩码
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Enable_GPIO0+i)==BST_CHECKED)
			iGpioMIndex |= GpioMask; //GPIO序号
		else
			iGpioMIndex &= ~GpioMask;	
	}	
	
	RetVal = CH348_GpioMGet(AfxPortH,&AfxUsbSer,iGpioMIndex,&GpioMLevel);
	ShowError("CH348_GpioMGet",RetVal);

	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16);
		if( GpioMLevel & GpioMask ) //GPIO电平值
			CheckDlgButton(AfxWndHwnd,IDC_348Status_GPIO0+i, BST_CHECKED);
		else
			CheckDlgButton(AfxWndHwnd,IDC_348Status_GPIO0+i, BST_UNCHECKED);
	}

	return;
}

VOID ReadCH348GpioCfg()
{
	UCHAR RetVal = 0;

	RetVal = CH348_GetGpioConfig(AfxPortH,&AfxUsbSer,&Afx348FuncSet,&Afx348SetDirOut,&Afx348SetDataOut);
	ShowError("CH348_GetGpioConfig",RetVal);
	if(RetVal!=CH910x_SUCCESS)
		return;
}

//更新CH348状态
VOID UpdateCH348GpioStatus()
{
	ULONG GpSel,i;
	ULONGLONG GpioMask;

	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{		
		GpioMask = (__int64)1<<(i+GpSel*16);
		CheckDlgButton(AfxWndHwnd,IDC_348IoFunc_GPIO0+i, (Afx348FuncSet    & GpioMask)?BST_CHECKED:BST_UNCHECKED);
		CheckDlgButton(AfxWndHwnd,IDC_348IoDir_GPIO0+i,  (Afx348SetDirOut  & GpioMask)?BST_CHECKED:BST_UNCHECKED);
		if( (Afx348FuncSet&Afx348FuncSet) && ( !(Afx348SetDirOut&GpioMask)) ) //返回的是GPIO 输入状态
			CheckDlgButton(AfxWndHwnd,IDC_348Status_GPIO0+i, (Afx348SetDataOut & GpioMask)?BST_CHECKED:BST_UNCHECKED);
	}
}
