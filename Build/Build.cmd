@echo off
cd /d %~dp0
echo ��ǰ����Ŀ¼��%cd%
echo �ȴ��û���Ӧ�������...
pause.
echo �����ļ�...
del /s /q %cd%\..\*.bak
echo �Ƿ�ʹ�þ�Ĭ����? (ʹ�� -q ����)
set /p useQuiet="������ y �� n (Ĭ�� y): "
if /i "%useQuiet%"=="n" (set quietFlag=) else (set quietFlag=-q)
echo ��ʼ����
echo �����ļ� Xdows-Security.e ...
ecl.exe make "%cd%\..\Xdows-Security.e" -nologo -s %quietFlag%
echo �����ļ� Scan.e ...��ʹ�ú��»��ģʽ���룩
ecl.exe make "%cd%\..\Bin\Function\Scan.e" -nologo -bm1 %quietFlag%
echo �����ļ� Window_Client.e ...
ecl.exe make "%cd%\..\Bin\Function\Window_Client.e" -nologo -s %quietFlag%
echo �����ļ� Plugins\Process\Main.e ...
ecl.exe make "%cd%\..\Plugins\Process\Files\Main.e" -nologo -s %quietFlag%
echo �����ļ� Plugins\Files\Main.e ...
ecl.exe make "%cd%\..\Plugins\Files\Files\Main.e" -nologo -s %quietFlag%
echo �������
echo �ȴ��û���Ӧ�������...
pause.
echo ��ʼ���
"F:\Inno Setup 6\ISCC.exe" "%cd%\Setup.iss"
echo ��ʼ���
echo ��������ִ�����
pause.