; 脚本由 Inno Setup 脚本向导生成。
; 有关创建 Inno Setup 脚本文件的详细信息，请参阅帮助文档！

#define MyAppName "Xdows Security"
#define MyAppVersion "4.00-Beta6"
#define MyAppPublisher "Xdows Software"
#define MyAppURL "https://xty64xty.netlify.app/"
#define MyAppExeName "Xdows-Security.exe"

[Setup]
; 注意：AppId 的值唯一标识此应用程序。不要在其他应用程序的安装程序中使用相同的 AppId 值。
; (若要生成新的 GUID，请在 IDE 中单击 "工具|生成 GUID"。)
AppId={{42C56BE7-5890-4DA5-9C12-FA690009768E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright=Xdows Software 版权所有
VersionInfoVersion=4.0.0.0
VersionInfoOriginalFileName=Setup.exe
DefaultDirName={autopf}\{#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
DisableProgramGroupPage=yes
DisableWelcomePage=no
LicenseFile=F:\Xdows-Security-4\License
; 取消注释以下行以在非管理安装模式下运行 (仅为当前用户安装)。
PrivilegesRequired=admin
OutputDir=F:\
OutputBaseFilename=Setup
SetupIconFile=F:\Xdows-Security-4\logo.ico
SolidCompression=yes
WizardStyle=modern

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\Xdows-Security-4\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Xdows-Security-4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; 注意：不要在任何共享系统文件上使用 "Flags: ignoreversion"

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

