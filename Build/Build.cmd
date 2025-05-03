@echo off
cd /d %~dp0
echo 当前所在目录：%cd%
echo 等待用户响应编译操作...
pause.
echo 清理文件...
del /s /q %cd%\..\*.bak
echo 是否使用静默编译? (使用 -q 参数)
set /p useQuiet="请输入 y 或 n (默认 y): "
if /i "%useQuiet%"=="n" (set quietFlag=) else (set quietFlag=-q)
echo 开始编译
echo 编译文件 Xdows-Security.e ...
ecl.exe make "%cd%\..\Xdows-Security.e" -nologo -s %quietFlag%
echo 编译文件 Scan.e ...（使用黑月汇编模式编译）
ecl.exe make "%cd%\..\Bin\Function\Scan.e" -nologo -bm1 %quietFlag%
echo 编译文件 Window_Client.e ...
ecl.exe make "%cd%\..\Bin\Function\Window_Client.e" -nologo -s %quietFlag%
echo 编译文件 Plugins\Process\Main.e ...
ecl.exe make "%cd%\..\Plugins\Process\Files\Main.e" -nologo -s %quietFlag%
echo 编译文件 Plugins\Files\Main.e ...
ecl.exe make "%cd%\..\Plugins\Files\Files\Main.e" -nologo -s %quietFlag%
echo 编译完成
echo 等待用户响应打包操作...
pause.
echo 开始打包
"F:\Inno Setup 6\ISCC.exe" "%cd%\Setup.iss"
echo 开始完成
echo 构建操作执行完成
pause.