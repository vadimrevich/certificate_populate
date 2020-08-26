; -- ReverseMonitoring.iss --
;
; This script Create Installator and deinstallator of the
; ReverseMonitoring Admin Packages

[Setup]
AppName=NIT Certificates Install
AppVersion=1.0.0.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName=c:\Util
MinVersion=0,6.0
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=e:\yuden\Compile
OutputBaseFilename=Certificates-Install
AllowNoIcons=True
AppPublisher=New Internet Technologies Inc.
RestartApplications=False
UserInfoPage=True
VersionInfoVersion=1.0.0.0
VersionInfoCompany=New Internet Technologies Inc.
VersionInfoTextVersion=Version 1.0.0.0_alpha
VersionInfoProductName=Certificates-Install
VersionInfoProductVersion=1.0.0.0
AppPublisherURL=http://file.tuneserv.ru/
SolidCompression=True
LicenseFile=.\LICENSE.md


[Files]
;Source: "Util\*.cmd"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "Util\*.xml"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.ps1"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.vbs"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.wsf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace; Attribs: hidden
Source: "Scripts\Certificates-Install-Postinstall.bat"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete
Source: "E:\yuden\.cert_data\nitfilesign1.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden
Source: "E:\yuden\.cert_data\verisign-gen0.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden
Source: "E:\yuden\.cert_data\verifilesign1.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Util"; ValueData: "{app}"

[UninstallRun]

[Run]
Filename: "{app}\Certificates-Install-Postinstall.bat"; WorkingDir: "{app}"; Flags: postinstall runhidden
