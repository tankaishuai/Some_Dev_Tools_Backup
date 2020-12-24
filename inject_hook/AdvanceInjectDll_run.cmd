@echo off
if not "%2" == "" (
	rundll32  "%cd%\AdvanceInjectDll.dll",AdvanceInjectDll_RunDll32  0,%2,%1
) else (
	echo AdvanceInjectDll_run.cmd  "dll_path"  target_pid
	pause
)
