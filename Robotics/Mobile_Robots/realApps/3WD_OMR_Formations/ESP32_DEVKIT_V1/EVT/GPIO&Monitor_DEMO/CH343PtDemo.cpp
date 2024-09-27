// 2021.4
//*******************************************
//**  Copyright  (C)  WCH  2004-2023       **
//**  Web:  http://wch.cn                  **
//*******************************************
//**  DEMO for USB to uart chip CH34X/CH910X**
//**  C, VC6.0                             **
//*******************************************
//
// CH34X/CH910Xϵ��USBת����оƬ ����ʶ�𣬶�̬��Ρ�GPIO���á�EEPROM���ú�����ʾ����
// �Ͼ��ߺ�΢����
// ���л���: Windows 2000/XP,Windows 7/8/10/11
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

//�������ÿؼ����
typedef struct _GpioCtrl
{
	ULONG GpioMask;
	ULONG EnId;
	ULONG FuncId;
	ULONG DirId;
	ULONG StaId;
}GpioCtrlS;

CHAR AfxPortName[10]="";   //�洢��⵽���Ѳ���Ĵ�����
UCHAR TempGpioCount; //GPIO������ʱ����
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
//GPIO�������ÿؼ����
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
//��ȡGPIO���ŵ�ƽ״̬
BOOL ReadGPIOLatch();
//������GPIO���ܵ����Ž��е�ƽ����
BOOL WriteGPIOLatch();
BOOL OpenPort();
VOID ClosePort();
//���½����ϵ�GPIO״̬
VOID UpdateSelection();
BOOL ConfigEepromRead();
BOOL ConfigEepromWrite();
//EEPROM�ֽ�д
VOID EepromByteWrite();
//EEPROM�ֽڶ�
VOID EepromByteRead();
//��GPIO���ܺͷ����������	
BOOL SetGpioEepromConfig();
//��ȡGPIO EEPROM����ֵ
BOOL GetGpioEepromConfig();

// ��ȡĳ��GPIO���ŵ�ƽ״̬,��Ӧ�����迪��GPIO����
VOID CH348GetGPIO();

VOID CH348SetGPIO();
// ����GPIO�Ĺ��ܺ�I/O����ͳ�ֵ
//iEnable,iFuncSet,iSetDirOutΪ64λ������λ�����GPIO���źŶ�Ӧ��
VOID CH348ConfigGPIO();

VOID ReadCH348GpioCfg();
//����CH348״̬
VOID UpdateCH348GpioStatus();

//���������Ϣ
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

/*��ʮ�������ַ�ת����ʮ������,����ת�����ַ���ltoa()����*/
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

/*��ʾ�ϴ����д���*/
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
		DbgPrint("%s����:(%d)%s",PreBuffer,LastResult,szSysMsg);
	}	
}

VOID ShowError(PCHAR FuncName,UCHAR RetVal)
{
	switch(RetVal)
	{
	case CH910x_SUCCESS:
		DbgPrint("%s�����ɹ�",FuncName);
		break;
	case CH910x_INVALID_HANDLE:
		DbgPrint("%s����,��Ч���",FuncName);
		break;
	case CH910x_INVALID_PARAMETER:
		DbgPrint("%s����,��Ч����",FuncName);
		break;
	case CH910x_DEVICE_IO_FAILED:
		DbgPrint("%s����,ִ��ʧ��",FuncName);
		break;
	case CH910x_FUNCTION_NOT_SUPPORTED:
		DbgPrint("%s����,�˹��ܲ�֧��",FuncName);
		break;
	case CH910x_NOT_INIT:
		DbgPrint("%sδ�ȵ��ó�ʼ������",FuncName);
		break;
	default :
		DbgPrint("%sδ֪����(%X)",FuncName,RetVal);
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

//������Ϣ��Ӧ����
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
			    //����ȫ����ʽΪ"////.//COMxx",����com9�Ĵ��ںű���Ҫ�ô���ȫ��,����򲻿�"
				case IDC_CH341PtHandleIsCH341:  //ͨ����������������ʶ��CH341����
					{
						HANDLE porthandle;
						UCHAR  CH34xPortI = 0xFF;
						CHAR fullportname[66]="";
						CHAR portname[20]="";
						UCHAR j=0;

						DbgPrint("ͨ�������ҵ�WCH USB����Ϊ");
						for (j=1;j<99;j++)
						{
							sprintf((CHAR *)portname,"COM%d\0",j);                 //�豸��
							sprintf((CHAR *)fullportname,"\\\\.\\%s\0",portname);  //�������豸��
							porthandle=CreateFile((CHAR *)fullportname,
								GENERIC_READ | GENERIC_WRITE,              // ���豸,֧���ص�����
								0,
								NULL, OPEN_EXISTING, NULL, NULL );

							if ( porthandle != INVALID_HANDLE_VALUE )
							{
								if(CH341PtHandleIsCH341(porthandle))
								{
									//��ȡоƬ��Ϣ
									AfxIcModel = CH343PT_GetChipProperty(porthandle,&AfxUsbSer);
									DbgPrint("%s:%s,FwVer:%s",portname,AfxUsbSer.ChipTypeStr,AfxUsbSer.FwVerStr);

									CH34xPortI = j-1;
								}								
								CloseHandle(porthandle);
							}
						}
						if(CH34xPortI!=0xFF)//�ҵ�WCH USB �����豸
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

						DbgPrint("ͨ������ҵ�WCH USB����Ϊ:");	
						for (j=1;j<99;j++) {
							sprintf((CHAR *)portname,"COM%d\0",j);                 //�豸��
							sprintf((CHAR *)fullportname,"\\\\.\\%s\0",portname);  //�������豸��
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
							DbgPrint("��ʼ����WCH USB���ڲ��");	
							IsAutoOpen = TRUE; //USB�����Զ��򿪹��ܿ���
						}
						else
						{
							DbgPrint("����WCH USB���ڼ���ʧ��");	
							IsAutoOpen = FALSE;  //USB�����Զ��򿪹��ܹر�
						}
					}
					else
					{
						if(CH341PtSetDevNotify(NULL,NULL))
							DbgPrint("ֹͣ����WCH USB���ڲ��");	
						IsAutoOpen = FALSE; //USB�����Զ��򿪹��ܹر�
					}
					break;
				case IDC_ReadGpioConfig:
					ReadGpioConfig();
					break;
				case IDC_ConfigGPIO: //����GPIO����
					ConfigGPIO();
					break;
				case IDC_SetGPIO: //�豸GPIO״̬
					WriteGPIOLatch();
					break;
				case IDC_GetGPIO: //��ȡGPIO״̬
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
				case IDC_OpenPort: //�򿪴���
					OpenPort();
					break;
				case IDC_ClosePort: //�رմ���
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
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
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
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
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
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
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
							if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
								continue;
							if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
								continue;
							CheckDlgButton(hWnd,GpioCtrl[i].StaId,BtSta);
						}		
					}
					break;
				case WM_DESTROY:
					CH341PtSetDevNotify(NULL,NULL);   //��ֹ�ڹر�ǰû��ȡ�����ڲ�μ���
					ClosePort();
					DestroyWindow(hWnd);
					break;
				default:
				   return DefWindowProc(hWnd, message, wParam, lParam);
			}
			break;
		case WM_KEYUP: //ģ���豸����¼�
			LONG iDevIndexAndEvent;
			iDevIndexAndEvent=wParam;  //���жϳ����д����Ĵ��ں�
			CH341SerNotifyFunc(iDevIndexAndEvent); //���ò���¼��������
			break;
		case WM_DESTROY:
			PostQuitMessage(0);
			break;
   }
   return 0;
}


VOID CALLBACK CH341PT_NOTIFY_ROUTINE(LONG iDevIndexAndEvent)
{  
	//���жϻص�������,���ܶ�ϵͳ��Դ��������.ͨ������WM_KEYUP�¼���ģ�����¼�
	PostMessage(AfxWndHwnd,WM_KEYUP,iDevIndexAndEvent,0); 
	return;
}

//�豸��δ�����
VOID  CH341SerNotifyFunc(LONG iDevIndexAndEvent) 
{
	CHAR fullportname[10]="";
	CHAR tem[50]="";
	CHAR portname[10]="";

	if(iDevIndexAndEvent>0) //��������¼��Ĵ��ں�
	{  //ch341�����Ѳ���
		sprintf(portname,"COM%d\0",iDevIndexAndEvent); //�˿���
		sprintf(fullportname,"\\\\.\\%s",portname); //�����Ķ˿ں�(����COM9��Ҫ�ô���)
		AfxPortSel = iDevIndexAndEvent;

		DbgPrint("���� %s �Ѳ���",portname);			
		if(CH341PtNameIsCH341((UCHAR *)fullportname))
		{
			if( IsAutoOpen ) //���ڲ����Զ���
			{	
				SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_SETCURSEL,AfxPortSel-1,0);
				//�򿪴���
				SendDlgItemMessage(AfxWndHwnd,IDC_OpenPort,BM_CLICK,0,0);				
			}			
		}
		else
		{			
		}
	}
	else if(iDevIndexAndEvent<0)
	{
		DbgPrint("���� COM%d �Ѱγ�",-iDevIndexAndEvent); //�жϴ����Ķ˿ں�Ϊ��ֵ

		if( IsAutoOpen ) //���ڲ����Զ���,�豸�γ����Զ��رմ���
		{
			//�رմ���
			SendDlgItemMessage(AfxWndHwnd,IDC_ClosePort,BM_CLICK,0,0);
			SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_SETCURSEL,0xFF,0);
		}		
	}
	return;
}

//�򿪴���
BOOL OpenPort()
{
	CHAR TempBuf[256] = "";
	CHAR PortName[50],FmtStr[64] = "";
	BOOL RetVal;
	std::string strtemp;
	//�ȹر�֮ǰ�򿪵Ĵ���
	if(AfxPortH != INVALID_HANDLE_VALUE)
		SendDlgItemMessage(AfxWndHwnd,IDC_ClosePort,BM_CLICK,0,0);

	AfxPortSel = SendDlgItemMessage(AfxWndHwnd,IDC_PortNum,CB_GETCURSEL,0,0);
	sprintf(PortName,"\\\\.\\COM%d",AfxPortSel+1);
	AfxPortH = CreateFile(PortName,
		GENERIC_READ | GENERIC_WRITE,// ���豸,֧���ص�����
		0,
		NULL, OPEN_EXISTING, NULL, NULL );

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("COM%d open failure.",AfxPortSel+1);
		return FALSE;
	}
	
	AfxIcModel = CH343PT_GetChipProperty(AfxPortH,&AfxUsbSer); //��ȡ����оƬ��Ϣ
	RetVal = (AfxIcModel!=0xFF);
	if(!RetVal)
	{	
		DbgPrint("оƬ��Ϣ��ȡʧ��");
		CloseHandle(AfxPortH);
		AfxPortH = INVALID_HANDLE_VALUE;
		return FALSE;
	}
	else
	{		
		DbgPrint("оƬ��Ϣ��ȡ�ɹ�");
	}
	if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) || (AfxUsbSer.ChipType == USER_TYPE_CH9102X)) 
		TempGpioCount = AfxUsbSer.GpioCount + 1; //CH9101Uû��GPIO5��CH9102Xû��GPIO4����������ö�Ӧ��GPIOѡ��
	else if(AfxUsbSer.ChipType == USER_TYPE_CH9104L)
		TempGpioCount = 6; //CH9104ÿ�����ڿɲ���6��GPIO
	else
		TempGpioCount = AfxUsbSer.GpioCount;

	//�������������õ�GPIOоƬ�ͺ���Ϣ
	strtemp += AfxUsbSer.ChipTypeStr;
	if(AfxUsbSer.ChipType == USER_TYPE_CH9104L)
		sprintf(TempBuf," GPIO%d-%d ����(��������, ��ֹ�޸�I/O���������·)",AfxUsbSer.PortIndex*10, AfxUsbSer.PortIndex*10+5);
	else
		sprintf(TempBuf," GPIO(%d)����(��������, ��ֹ�޸�I/O���������·)",AfxUsbSer.GpioCount);
	strtemp += TempBuf;
	if((AfxUsbSer.ChipType == USER_TYPE_CH348L) || (AfxUsbSer.ChipType == USER_TYPE_CH348Q))
		SetDlgItemText(AfxWndHwnd,65530,strtemp.c_str()); //��ʾCH348L��CH348Q��GPIO��Ϣ
	else
		SetDlgItemText(AfxWndHwnd,65500,strtemp.c_str());
	DbgPrint("COM%d %s",AfxPortSel+1,RetVal?"is opened.":"open failure.");
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
		RetVal = CH342F_GpioInit(AfxPortH, FALSE, 0, 0); //����GPIO���ܲ���ʼ���ù���
	//��ȡGPIO���ܺͷ���������Ϣ	
	PostMessage(GetDlgItem(AfxWndHwnd,IDC_ReadGpioConfig),BM_CLICK,0,0);
	//��ȡGPIO���ܵ�����ֵ
	PostMessage(GetDlgItem(AfxWndHwnd,IDC_GetGPIO),BM_CLICK,0,0);
	//���½�����Ϣ
	UpdateSelection();		

	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_PortNum),FALSE );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_CH341PtHandleIsCH341),FALSE );

	return RetVal;
}

//�رմ���
VOID ClosePort()
{
	UCHAR i;
	
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
		CH342F_GpioDeInit(AfxPortH); //�رմ���ǰ����ô˺������ر�GPIO����
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
	//���½���
	UpdateSelection();
	//���ò�ȡ����ѡCheckBox�ؼ�
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
	SetDlgItemText(AfxWndHwnd,65500,"CH910X/CH344 GPIO����(��������, ��ֹ�޸�I/O���������·)");
	SetDlgItemText(AfxWndHwnd,65530,"CH348Gpio");
}

//���½����ϵ�GPIO״̬
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
	
	//ʹ��EERPOM������ť
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromByteRead),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromByteWrite),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromRead),AfxUsbSer.IsEmbbedEeprom );
	EnableWindow( GetDlgItem(AfxWndHwnd,IDC_EepromWrite),AfxUsbSer.IsEmbbedEeprom );	

	//ʹ��GPIO������ť
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
			sprintf(&FmtStr[strlen(FmtStr)],"оƬ�ͺ�:%s,���:%d",AfxUsbSer.ChipTypeStr,AfxUsbSer.PortIndex);
			if(AfxUsbSer.GpioCount)
			{
				sprintf(&FmtStr[strlen(FmtStr)],",֧��%d��GPIO",AfxUsbSer.GpioCount);
			}
				
			if(AfxUsbSer.IsEmbbedEeprom)
				sprintf(&FmtStr[strlen(FmtStr)],",֧��оƬ��ϢEEPROM����",AfxUsbSer.GpioCount);
			
			if(AfxUsbSer.IsSupportMcuBootCtrl)
				sprintf(&FmtStr[strlen(FmtStr)],",֧��MCU����ģʽ����",AfxUsbSer.IsSupportMcuBootCtrl);
			
			SetDlgItemText(AfxWndHwnd,IDC_ChipType,FmtStr);		
			for(i=0;i<TempGpioCount;i++)
			{
				if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
					continue;
				if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
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
			SetDlgItemText(AfxWndHwnd,IDC_ChipType,"���ȴ򿪴���");		
		}
		
	}
	else
	{
		SetDlgItemText(AfxWndHwnd,IDC_ChipType,"���ȴ򿪴���:");	
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

//GPIO���ܺͷ���ʵʱ���ã��˹��ܵ�����ʧЧ
BOOL ConfigGPIO()
{
	std::string tempStr;
	int errorCount = 0;
	int errorIndex[6];
	ULONG iEnable = 0, IODir = 0, iFuncSet = 0, i, IOSta = 0;
	UCHAR RetVal = 0;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("�ȴ򿪴��ں��������");
		return FALSE;
	}

	//�ӽ����ȡGPIO����ֵ
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
			continue;
		//GPIO0	���ܺͷ�������
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //GPIO0ʹ��
		{
			iEnable |= GpioCtrl[i].GpioMask;  //GPIO������Чλ
			if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].FuncId) == BST_CHECKED )    //GPIO0������Ϊ GPIO ����
			{
				iFuncSet |= GpioCtrl[i].GpioMask;  //���Ź���ΪGPIO
				if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId) == BST_CHECKED ) //�������
				{
					IODir |= GpioCtrl[i].GpioMask; //GPIO ���
					if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].StaId) == BST_CHECKED ) //�������
					{
						IOSta |= GpioCtrl[i].GpioMask; //GPIO ���
					}
					else
						IOSta &= ~GpioCtrl[i].GpioMask; //GPIO ���
				}
				else
					IODir &= ~GpioCtrl[i].GpioMask; //GPIO ����
			}
			else //���Ź���ΪоƬĬ�Ϲ���
				iFuncSet &= ~GpioCtrl[i].GpioMask;
		}
	}
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		tempStr += "CH342F��";
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO1) == BST_UNCHECKED)
		{
			tempStr += "GPIO1��";
			errorIndex[errorCount] = IDC_IoDir_GPIO1;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO3) == BST_UNCHECKED)
		{
			tempStr += "GPIO3��";
			errorIndex[errorCount] = IDC_IoDir_GPIO3;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO7) == BST_UNCHECKED)
		{
			tempStr += "GPIO7��";
			errorIndex[errorCount] = IDC_IoDir_GPIO7;
			errorCount++;
		}
		if(IsDlgButtonChecked(AfxWndHwnd, IDC_IoDir_GPIO9) == BST_UNCHECKED)
		{
			tempStr += "GPIO9��";
			errorIndex[errorCount] = IDC_IoDir_GPIO9;
			errorCount++;
		}
		if(errorCount++)
		{
			tempStr += "IO����������Ϊ���룬ֻ������Ϊ��������������ã�";
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
		if(RetVal==CH910x_SUCCESS) //���óɹ�
		{
			AfxGpioEnable = iFuncSet; //����״̬
			AfxGpioDir = IODir;
			DbgPrint("CH342F_GpioInit���ܺͷ��������óɹ�");
			//��ȡGPIO��ֵ
		}
		else //����ʧ��
		{
			ShowError("CH342F_GpioInit",RetVal);
		}
	}
	else
	{
		//��оƬ��������ֵ
		//CH9104ÿ������ֻ�ܲ���6��GPIO��GPIOʵ�����ź�Ϊ������ţ�AfxUsbSer.PortIndex��*10+GPIO�š����һ���ڣ���Ӧ����GPIO0-5����ڶ����ڣ���Ӧ����GPIO10-15
		RetVal = CH910x_GpioConfig(AfxPortH,&AfxUsbSer,iEnable,iFuncSet,IODir);
		if(RetVal==CH910x_SUCCESS) //���óɹ�
		{
			AfxGpioEnable = iFuncSet; //����״̬
			AfxGpioDir = IODir;
			DbgPrint("CH910x_GpioConfig���ܺͷ��������óɹ�");
			//��ȡGPIO��ֵ
		}
		else //����ʧ��
		{
			ShowError("CH910x_GpioConfig",RetVal);
		}
	}
	return (RetVal==CH910x_SUCCESS);
}

//��GPIO����ֵ
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
		//CH9104ÿ������ֻ�ܲ���6��GPIO��GPIOʵ�����ź�Ϊ������ţ�AfxUsbSer.PortIndex��*10+GPIO�š����һ���ڣ���Ӧ����GPIO0-5����ڶ����ڣ���Ӧ����GPIO10-15
		RetVal = CH910x_GetGpioConfig(AfxPortH,&AfxUsbSer,&AfxGpioEnable,&AfxGpioDir,&AfxGpioSta);
		if( RetVal != CH910x_SUCCESS )
		{
			ShowError("CH910x_GetGpioConfig",RetVal);
		}		
	}
	UpdateSelection();
	return TRUE;
}

//������GPIO ������ܵ����Ž��е�ƽ����
BOOL WriteGPIOLatch()
{	
	ULONG iEnable = 0,iSetDataOut = 0,i;
	UCHAR RetVal;
	
	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("�ȴ򿪴��ں���ܽ���IO��д");
		return FALSE;
	}
	//��ѡ�е����Ź���ΪGPIO ����Ž��е�ƽ���ã�GpioMask = CH910x_GPIO_X��ͷ�ļ��ж���
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
			continue;
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //����GPIO��ƽ
		{
			if( (AfxGpioEnable & GpioCtrl[i].GpioMask)&& //����ΪGPIO����
				(AfxGpioDir & GpioCtrl[i].GpioMask) )    //���ŷ���Ϊ���
			{
				iEnable |= GpioCtrl[i].GpioMask;    //����GPIO���ŵ�ƽ����
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
		//���õ�ƽ
		//CH9104ÿ������ֻ�ܲ���6��GPIO��GPIOʵ�����ź�Ϊ������ţ�AfxUsbSer.PortIndex��*10+GPIO�š����һ���ڣ���Ӧ����GPIO0-5����ڶ����ڣ���Ӧ����GPIO10-15
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

//��ȡGPIO���ŵ�ƽ״̬
BOOL ReadGPIOLatch()
{
	ULONG iStatus = 0,i;
	UCHAR RetVal = 0;
	
	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("�ȴ򿪴��ں��������");
		return FALSE;
	}
	if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
	{
		RetVal = CH342F_GpioGet(AfxPortH,&iStatus);
	}
	else
	{
		//��GPIO���ŵ�ƽ
		//CH9104ÿ������ֻ�ܲ���6��GPIO��GPIOʵ�����ź�Ϊ������ţ�AfxUsbSer.PortIndex��*10+GPIO�š����һ���ڣ���Ӧ����GPIO0-5����ڶ����ڣ���Ӧ����GPIO10-15
		RetVal = CH910x_GpioGet(AfxPortH,&AfxUsbSer,&iStatus);
		AfxGpioSta = iStatus;
	}
	//��ʾGPIO״̬
	if(RetVal == CH910x_SUCCESS )
	{	
		if( AfxUsbSer.ChipType == USER_TYPE_CH344L ) //CH344оƬ,����GPIO�����״̬
		{
			for(i=0;i<AfxUsbSer.GpioCount;i++)
			{
				if( (IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId)==BST_CHECKED) && (IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId)==BST_UNCHECKED ) )
					CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, (iStatus&GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED ); //λΪ1��ʾ�ߵ�ƽ,λΪ0��ʾ�͵�ƽ
			}
		}
		else
		{
			for(i=0;i<TempGpioCount;i++)
			{
				if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
					continue;
				if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
					continue;
				CheckDlgButton(AfxWndHwnd,GpioCtrl[i].StaId, (iStatus&GpioCtrl[i].GpioMask)?BST_CHECKED:BST_UNCHECKED ); //λΪ1��ʾ�ߵ�ƽ,λΪ0��ʾ�͵�ƽ
			}
		}
		if(AfxUsbSer.ChipType == USER_TYPE_CH342F)
			DbgPrint("CH342F_GpioGetֵ�ѻ�ȡ");
		else	
			DbgPrint("CH910x_GpioGet GPIOֵ�ѻ�ȡ");
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

//��оƬ����
BOOL ConfigEepromRead()
{
	ULONG DataLen=0,i;    //Ҫ��ȡ�����ݳ���
	UCHAR DataBuf[256]="";
	UCHAR Value;
	CHAR  FmtStr[2048] = "";
	BOOL  RetVal = FALSE;	

	//��Ҫ�Ƚ���EEPROM��д����ģʽ,��Ҫ��ָ�����ڲ����ʣ�������ɺ������CH343PT_ExitConfigMode�˳�
	if( !CH343PT_EnterConfigMode(AfxPortH) )
	{
		DbgPrint("CH343PT_EnterConfigMode failure.");
		return FALSE;
	}
	if(AfxIcModel==USER_TYPE_CH340)
		DataLen = sizeof(USERCFG_340);
	else
		DataLen = sizeof(USERCFG_343);
	
	//��������Ϣ
	if( !CH343PT_ReadDevConfig(AfxPortH,&DataLen,DataBuf) )
		DbgPrint("CH343PT_ReadDevConfig failure.");
	else
	{
		DbgPrint("CH343PT_ReadDevConfig succ.");
		//16������ʾ
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

//доƬ������Ϣ
BOOL ConfigEepromWrite()
{
	ULONG DataLen=0,i,StrLen;
	UCHAR DataBuf[256]="";
	CHAR  FmtStr[2048] = "",ValStr[10] = "";
	BOOL  RetVal = FALSE;

	//��Ҫ�Ƚ���EEPROM��д����ģʽ,��Ҫ��ָ�����ڲ����ʣ�������ɺ������CH343PT_ExitConfigMode�˳�
	if( !CH343PT_EnterConfigMode(AfxPortH) )
	{
		DbgPrint("CH343PT_EnterConfigMode failure.");
		return FALSE;
	}

	//ȡ��������
	DataLen = 0;
	StrLen = GetDlgItemText(AfxWndHwnd,IDC_CfgEepromData,FmtStr,sizeof(FmtStr));	
	for(i=0;i<StrLen;i+=3)
	{		
		memcpy(&ValStr[0],&FmtStr[i],2);
		
		DataBuf[DataLen] = (UCHAR)mStrToHex(ValStr);
		DataLen++;
	}	
	//�����ж�
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
	
	//д��EEPROM
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

//EEPROM�ֽڶ�
VOID EepromByteRead()
{
	UCHAR Value;
	UCHAR Addr;
	CHAR  FmtStr[128] = "";

	//�ֽڶ���ַ
	GetDlgItemText(AfxWndHwnd,IDC_EepromStartAddr,&FmtStr[0],3); //ȡ2���ַ���һ��β��
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

//EEPROM�ֽ�д
VOID EepromByteWrite()
{
	UCHAR Value;
	ULONG Addr;
	CHAR  FmtStr[128] = "";

	GetDlgItemText(AfxWndHwnd,IDC_EepromStartAddr,&FmtStr[0],3); //ȡ2���ַ���һ��β��
	Addr = mStrToHex(FmtStr);	

	GetDlgItemText(AfxWndHwnd,IDC_EepromData,&FmtStr[0],3); //ȡ2���ַ���һ��β��
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

//����оƬEEPROM��GPIO���ã�оƬ�ϵ�ʱ��Ч��оƬ��ʼ��ʱ���ȡ����ʼ��GPIO���ܡ�����״̬��
//!!!�˹��������ã�ʹ��ǰ�����ȷ�Ϻ����ŷ������·��������Ƿ�һ��
BOOL SetGpioEepromConfig()
{
	ULONG iEnable = 0,IODir = 0,IOSta = 0,iFuncSet  = 0,i,GpioSetBitMask = 0;
	UCHAR RetVal = 0;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("�ȴ򿪴��ں��������");
		return FALSE;
	}

	if( ( AfxIcModel != USER_TYPE_CH9102F) &&
		( AfxIcModel != USER_TYPE_CH9101U) &&
		( AfxIcModel != USER_TYPE_CH9101H) )
	{
		DbgPrint("��֧��GPIO EEPROM����");
		return FALSE;
	}

	//�ӽ����ȡGPIO����ֵ
	for(i=0;i<TempGpioCount;i++)
	{
		GpioSetBitMask = GpioCtrl[i].GpioMask; //GPIO����λ����CH910x_GPIO_X
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
			continue;
		//GPIO0	����/����/��ƽ����
		if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].EnId) == BST_CHECKED )    //GPIO0����ʹ��
		{  
			iEnable |= GpioSetBitMask;//CH910x_GPIO_0;
			if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].FuncId) == BST_CHECKED )    //GPIO0���Ź��ܣ�GPIO ����
			{
				iFuncSet |= GpioSetBitMask;  //GPIO����
				if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].DirId) == BST_CHECKED ) //GPIO���
				{
					IODir |= GpioSetBitMask; //GPIO ���
					if( IsDlgButtonChecked(AfxWndHwnd,GpioCtrl[i].StaId) == BST_CHECKED ) //�ߵ�ƽ
						IOSta |= GpioSetBitMask; //GPIO�ߵ�ƽ
					else
						IOSta &= ~GpioSetBitMask; //GPIO�͵�ƽ
				}
				else
					IODir &= ~GpioSetBitMask; //GPIO ����
			}
			else //GPIO0���Ź���ΪоƬĬ�Ϲ���
				iEnable &= ~GpioSetBitMask;
		}
	}

	//�ȿ���GPIO EEPROM������Чλ
	CH910x_EnableGpioEepromConfig(AfxPortH,TRUE);
	//��EEPROMд��GPIO��������,�ϵ�ʱ��оƬ�Զ�����
	RetVal = CH910x_SetGpioEepromConfig(AfxPortH,iEnable,iFuncSet,IODir,IOSta,TRUE,NULL);
	//CH910x_EnableGpioEepromConfig(AfxPortH,FALSE); //debug

	if(RetVal == CH910x_SUCCESS ) //���óɹ�
	{	
		DbgPrint("CCH910x_SetGpioEepromConfig succ");		
	}
	else //����ʧ��
	{
		ShowError("CH910x_SetGpioEepromConfig",RetVal);
	}
	
	return (RetVal);
}

//��ȡGPIO EEPROM����ֵ
BOOL GetGpioEepromConfig()
{
	ULONG iFuncSet = 0,iSetDirOut = 0,iSetDataOut = 0,i;
	UCHAR RetVal;

	if( AfxPortH == INVALID_HANDLE_VALUE )
	{
		DbgPrint("�ȴ򿪴��ں��������");
		return FALSE;
	}

	if( ( AfxIcModel != USER_TYPE_CH9102F) &&
		( AfxIcModel != USER_TYPE_CH9101U) &&
		( AfxIcModel != USER_TYPE_CH9101H) )
	{
		DbgPrint("��֧��GPIO EEPROM����");
		return FALSE;
	}

	RetVal = CH910x_GetGpioEepromConfig(AfxPortH,&iFuncSet,&iSetDirOut,&iSetDataOut);
	if( RetVal != CH910x_SUCCESS )
	{
		ShowError("CH910x_GetGpioEepromConfig",RetVal);
		return FALSE;
	}

	//��ʾEEPROM������Ϣ
	for(i=0;i<TempGpioCount;i++)
	{
		if((AfxUsbSer.ChipType == USER_TYPE_CH9101U) && (i == 5)) //CH9101H/U����GPIO5
			continue;
		if((AfxUsbSer.ChipType == USER_TYPE_CH9102X) && (i == 4)) //CH9102X����GPIO4
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

// ����GPIO�Ĺ��ܺ�I/O����ͳ�ֵ
//iEnable,iFuncSet,iSetDirOutΪ64λ������λ�����GPIO���źŶ�Ӧ��
VOID CH348ConfigGPIO()
{
	ULONG i,RetVal;	
	ULONGLONG GpSel,GpioMask;

	ULONGLONG iFuncSet = 0;       // ��������:ĳλֵΪ0,��ʾ��Ӧ����ΪоƬĬ�Ϲ���ʹ��;Ϊ1,��ʾ��Ӧ������ΪGPIO����ʹ��;
	ULONGLONG iSetDirOut = 0;     // GPIO�ŷ�������:ĳλΪ0��ʾ��Ӧ���ŷ���Ϊ����;ĳλΪ1��ʾ��Ӧ���ŷ���Ϊ���	
	ULONGLONG iSetDataOut = 0;    // IO�������,���GPIO����Ϊ���,��ôĳλ��0ʱ��Ӧ��������͵�ƽ,ĳλ��1ʱ��Ӧ��������ߵ�ƽ
	ULONGLONG iEnable = 0;        // λʹ��:��λ��Ӧ���ź�,λ0��ӦGPIO0,λ1��ӦGPIO1;ĳλΪ1,��ʾiGpioFunc,iSetDirOut��Ӧλ��Ч											 

	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16); //GPIOλ����
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Enable_GPIO0+i)==BST_CHECKED)
		{
			iEnable |= GpioMask; //λʹ��
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoFunc_GPIO0+i)==BST_CHECKED)
				iFuncSet |= GpioMask;
			else
				iFuncSet &= ~GpioMask;

			//IO����
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoDir_GPIO0+i)==BST_CHECKED)
				iSetDirOut |= GpioMask;
			else
				iSetDirOut &= ~GpioMask;

			//IO�����ֵ
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
	if(RetVal==CH910x_SUCCESS)//����GPIO״̬
	{
		SendDlgItemMessage(AfxWndHwnd,IDC_348ReadGPIOCfg,BM_CLICK,0,0);
	}

	return;
}

VOID CH348SetGPIO()
{
	ULONGLONG       iGpioMIndex = 0;     // GPIO������룬λ0-63
	ULONGLONG		iGpioMLevel = 0;      // GPIO��ƽ���룬����iGpioMIndexλ�ö�Ӧ��1���ߵ�ƽ��0���͵�ƽ	ULONG i;
	ULONG i,GpioC = 0;
	UCHAR iGpioIndex,iGpioLevel,RetVal;	
	ULONGLONG GpioMask = 0,GpSel;
	
	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16);
		
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348IoDir_GPIO0+i)==BST_CHECKED)//ֻ������Ų�������
		{
			GpioC++;
			iGpioMIndex |= (GpioMask); //GPIO���
			if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Status_GPIO0+i)==BST_CHECKED) //�ߵ�ƽ
			{
				iGpioMLevel |= (GpioMask); //GPIO��ƽ
			}
			else //�͵�ƽ
			{
				iGpioMLevel &= ~(GpioMask);
			}
		}
	}
	if(GpioC == 0) //��������
		RetVal = CH348_GpioMSet(AfxPortH,&AfxUsbSer,iGpioMIndex,iGpioMLevel);
	else if(GpioC>1) //��������
		RetVal = CH348_GpioMSet(AfxPortH,&AfxUsbSer,iGpioMIndex,iGpioMLevel);
	else if(GpioC==1) //��������
	{
		for(i=0;i<16;i++)
		{
			if( iGpioMIndex&&(1<<i) )  //��ǰ�������ں�
			{
				iGpioIndex = (UCHAR)(i+16*GpSel);
				iGpioLevel = (iGpioMLevel>0);
				
				RetVal = CH348_GpioSet(AfxPortH,&AfxUsbSer,iGpioIndex,iGpioLevel);
				break;
			}
		}
	}
	if(RetVal==CH910x_SUCCESS)//����GPIO״̬
	{
		SendDlgItemMessage(AfxWndHwnd,IDC_348ReadGPIOCfg,BM_CLICK,0,0);
	}
	ShowError("CH348_GpioSet",RetVal);
	return;
}

// ��ȡĳ��GPIO���ŵ�ƽ״̬,��Ӧ�����迪��GPIO����
VOID CH348GetGPIO()
{
	ULONGLONG        iGpioMIndex=0;     // GPIO������룬λ0-63
    ULONGLONG	   	 GpioMLevel=0;
	UCHAR  RetVal,i;
	ULONGLONG GpioMask = 0,GpSel;

	GpSel = SendDlgItemMessage(AfxWndHwnd,IDC_CH348GpioGpSel,CB_GETCURSEL,0, 0);
	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16); //GPIOλ����
		if(IsDlgButtonChecked(AfxWndHwnd,IDC_348Enable_GPIO0+i)==BST_CHECKED)
			iGpioMIndex |= GpioMask; //GPIO���
		else
			iGpioMIndex &= ~GpioMask;	
	}	
	
	RetVal = CH348_GpioMGet(AfxPortH,&AfxUsbSer,iGpioMIndex,&GpioMLevel);
	ShowError("CH348_GpioMGet",RetVal);

	for(i=0;i<16;i++)
	{
		GpioMask = (__int64)1<<(i+GpSel*16);
		if( GpioMLevel & GpioMask ) //GPIO��ƽֵ
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

//����CH348״̬
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
		if( (Afx348FuncSet&Afx348FuncSet) && ( !(Afx348SetDirOut&GpioMask)) ) //���ص���GPIO ����״̬
			CheckDlgButton(AfxWndHwnd,IDC_348Status_GPIO0+i, (Afx348SetDataOut & GpioMask)?BST_CHECKED:BST_UNCHECKED);
	}
}
