
一个注入辅助工具，测试时可用：

rundll32 C:\TestDll.dll,StartInject  进程PID, 0
rundll32 C:\TestDll.dll,StartInject  窗口句柄16进制, 1

以上分别使用 远程线程、钩子注入
