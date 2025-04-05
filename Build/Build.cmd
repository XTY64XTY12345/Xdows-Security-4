@echo off
cd /d %~dp0
echo 当前所在目录：%cd%
echo 等待用户响应构建操作...
pause.
echo 清理文件...
del /s /q %cd%\..\*.bak
echo 开始编译
echo 编译文件 Xdows-Security.e ...
ecl.exe make "%cd%\..\Xdows-Security.e" -nologo -s -q
echo 编译文件 Scan.e ...（使用黑月汇编模式编译）
ecl.exe make "%cd%\..\Bin\Function\Scan.e" -nologo -bm0 -q
echo 编译文件 Plugins\Process\Main.e ...
ecl.exe make "%cd%\..\Plugins\Process\Files\Main.e" -nologo -s -q
echo 编译文件 Plugins\Files\Main.e ...
ecl.exe make "%cd%\..\Plugins\Files\Files\Main.e" -nologo -s -q
echo 编译完成
echo 开始打包
"G:\Inno Setup 6\ISCC.exe" "%cd%\Setup.iss"
echo 开始完成
echo 构建操作执行完成
pause.