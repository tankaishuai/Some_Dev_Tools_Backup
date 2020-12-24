@echo off

if "%1" == "" (
	echo Need process.exe
	echo\
	@echo 1. install dump catcher
	@echo 2. uninstall dump catcher
	@echo 3. process.exe hung up detect
	@echo 4. monitor process.exe exception
	echo\
	pause
	exit /b 0
)

set proc=%1

set proc_dump_exe=%~dp0\procdump.exe
%proc_dump_exe%
@echo 1. install dump catcher
@echo 2. uninstall dump catcher
@echo 3. process.exe hung up detect
@echo 4. monitor process.exe exception

set /p choice=chose 1/2/3:

if /i "%choice%"=="1" goto install_dump_catcher
if /i "%choice%"=="2" goto uninstall_dump_cathcer
if /i "%choice%"=="3" goto hung_up_detect
if /i "%choice%"=="4" goto monitor_exception

@echo "choice" is worng!!!
:Exit
pause
exit

:install_dump_catcher
%proc_dump_exe% -i -ma
goto Exit

:uninstall_dump_cathcer
%proc_dump_exe% -u
goto Exit

:hung_up_detect
%proc_dump_exe% -ma -h %proc%
goto Exit

:monitor_exception
taskkill -f -im %proc%
%proc_dump_exe% -w -h -e -ma %proc%