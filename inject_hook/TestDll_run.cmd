@echo off
if "%1" == "" (
	echo һ��ע�븨�����ߣ�����ʱ���ã�
	echo rundll32 C:\TestDll.dll,StartInject  ����PID, 0
	echo rundll32 C:\TestDll.dll,StartInject  ���ھ��16����, 1
	echo ���Ϸֱ�ʹ�� Զ���̡߳�����ע��
	pause
) else (
	rundll32 C:\TestDll.dll,StartInject  %1,0
)
