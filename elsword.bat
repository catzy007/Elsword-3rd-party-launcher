@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "VOID.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo currentdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) >> CreateShortcut.vbs
echo oLink.TargetPath = currentdir ^& "\data\x2.exe" >> CreateShortcut.vbs
echo oLink.Arguments = "pxk19slammsu286nfha02kpqnf729ck" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = currentdir ^& "\data" >> CreateShortcut.vbs
echo oLink.Description = "Void Elsword" >> CreateShortcut.vbs
echo oLink.IconLocation = currentdir ^& "\data\x2.exe,0" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
pause
start VOID.lnk