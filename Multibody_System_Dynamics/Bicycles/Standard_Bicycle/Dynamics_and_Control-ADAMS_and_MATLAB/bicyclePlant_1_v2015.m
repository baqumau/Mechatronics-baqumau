% Adams / MATLAB Interface - Release 2015.0.0
system('taskkill /IM scontrols.exe /F >NUL');clc;
global ADAMS_sysdir; % used by setup_rtw_for_adams.m
global ADAMS_host; % used by start_adams_daemon.m
machine=computer;
datestr(now)
if strcmp(machine, 'SOL2')
   arch = 'solaris32';
elseif strcmp(machine, 'SOL64')
   arch = 'solaris32';
elseif strcmp(machine, 'GLNX86')
   arch = 'linux32';
elseif strcmp(machine, 'GLNXA64')
   arch = 'linux64';
elseif strcmp(machine, 'PCWIN')
   arch = 'win32';
elseif strcmp(machine, 'PCWIN64')
   arch = 'win64';
else
   disp( '%%% Error : Platform unknown or unsupported by Adams/Controls.' ) ;
   arch = 'unknown_or_unsupported';
   return
end
if strcmp(arch,'win64')
   [flag, topdir]=system('adams2015_x64 -top');
else
   [flag, topdir]=system('adams2015 -top');
end
if flag == 0
  temp_str=strcat(topdir, '/controls/', arch);
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'matlab');
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'utils');
  addpath(temp_str)
  ADAMS_sysdir = strcat(topdir, '');
else
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2015\controls/win64' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2015\controls/win32' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2015\controls/matlab' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2015\controls/utils' ) ;
  ADAMS_sysdir = 'C:\MSC~1.SOF\ADAMS_~1\2015\' ;
end
ADAMS_exec = '' ;
ADAMS_host = 'baqumau-PC' ;
ADAMS_cwd ='C:\Users\mauro\Mechatronics-baqumau\Multibody_System_Dynamics\Bicycles\Standard_Bicycle\Dynamics_and_Control-ADAMS_and_MATLAB'  ;
ADAMS_prefix = 'bicyclePlant_1_v2015' ;
ADAMS_static = 'no' ;
ADAMS_solver_type = 'C++' ;
if exist([ADAMS_prefix,'.adm']) == 0
   disp( ' ' ) ;
   disp( '%%% Warning : missing ADAMS plant model file(.adm) for Co-simulation or Function Evaluation.' ) ;
   disp( '%%% If necessary, please re-export model files or copy the exported plant model files into the' ) ;
   disp( '%%% working directory.  You may disregard this warning if the Co-simulation/Function Evaluation' ) ;
   disp( '%%% is TCP/IP-based (running Adams on another machine), or if setting up MATLAB/Real-Time Workshop' ) ;
   disp( '%%% for generation of an External System Library.' ) ;
   disp( ' ' ) ;
end
ADAMS_init = '' ;
ADAMS_inputs  = 'RearWheel_AngSpeed!Steering_Angle!Disturbance' ;
ADAMS_outputs = 'Lean_Angle' ;
ADAMS_pinput = 'bicyclePlant_1_v2015.ctrl_pinput' ;
ADAMS_poutput = 'bicyclePlant_1_v2015.ctrl_poutput' ;
ADAMS_uy_ids  = [
                   3
                   4
                   13
                   6
                ] ;
ADAMS_mode   = 'non-linear' ;
tmp_in  = decode( ADAMS_inputs  ) ;
tmp_out = decode( ADAMS_outputs ) ;
disp( ' ' ) ;
disp( '%%% INFO : ADAMS plant actuators names :' ) ;
disp( [int2str([1:size(tmp_in,1)]'),blanks(size(tmp_in,1))',tmp_in] ) ;
disp( '%%% INFO : ADAMS plant sensors   names :' ) ;
disp( [int2str([1:size(tmp_out,1)]'),blanks(size(tmp_out,1))',tmp_out] ) ;
disp( ' ' ) ;
clear tmp_in tmp_out ;
% Adams / MATLAB Interface - Release 2015.0.0
