@echo off
cd /d %~dp0
echo ��ǰ����Ŀ¼��%cd%
echo �ȴ��û���Ӧ��������...
pause.
echo �����ļ�...
del /s /q %cd%\..\*.bak
echo ��ʼ����
echo �����ļ� Xdows-Security.e ...
ecl.exe make "%cd%\..\Xdows-Security.e" -nologo -s -q
echo �����ļ� Scan.e ...��ʹ�ú��»��ģʽ���룩
ecl.exe make "%cd%\..\Bin\Function\Scan.e" -nologo -bm0 -q
echo �����ļ� Plugins\Process\Main.e ...
ecl.exe make "%cd%\..\Plugins\Process\Files\Main.e" -nologo -s -q
echo �����ļ� Plugins\Files\Main.e ...
ecl.exe make "%cd%\..\Plugins\Files\Files\Main.e" -nologo -s -q
echo �������
echo ��ʼ���
"G:\Inno Setup 6\ISCC.exe" "%cd%\Setup.iss"
echo ��ʼ���
echo ��������ִ�����
pause.