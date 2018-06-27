Set oWS = WScript.CreateObject("WScript.Shell") 
sLinkFile = "VOID.lnk" 
Set oLink = oWS.CreateShortcut(sLinkFile) 
currentdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) 
oLink.TargetPath = currentdir & "\data\x2.exe\" 
oLink.Arguments = "pxk19slammsu286nfha02kpqnf729ck" 
oLink.WorkingDirectory = currentdir & "\data" 
oLink.Description = "Void Elsword" 
oLink.IconLocation = currentdir & "\data\x2.exe,0" 
oLink.Save 