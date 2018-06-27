#include <stdio.h>
#include <stdlib.h>

void main(){
	//check if void.lnk was exist
	FILE *check;
    if ((check = fopen("VOID.lnk", "r"))){
    	//if exist then launch void.lnk
        fclose(check);
        system("start VOID.lnk");
    }else{
    	//if not, create vbs script to create void.lnk
    	//then delete vbs script
    	//then launch void.lnk
	    FILE *vbasic;
		vbasic = fopen ("lnchrvbs.vbs", "w");
		///fprintf(fp, "TEMPlATE");
		fprintf(vbasic, "Set oWS = WScript.CreateObject(\"WScript.Shell\") \n");
		fprintf(vbasic, "sLinkFile = \"VOID.lnk\" \n");
		fprintf(vbasic, "Set oLink = oWS.CreateShortcut(sLinkFile) \n"); 
		fprintf(vbasic, "currentdir = CreateObject(\"Scripting.FileSystemObject\").GetParentFolderName(WScript.ScriptFullName) \n");
		fprintf(vbasic, "oLink.TargetPath = currentdir & \"\134data\134x2.exe\" \n");
		fprintf(vbasic, "oLink.Arguments = \"pxk19slammsu286nfha02kpqnf729ck\" \n");
		fprintf(vbasic, "oLink.WorkingDirectory = currentdir & \"\134data\" \n");
		fprintf(vbasic, "oLink.Description = \"Void Elsword\" \n");
		fprintf(vbasic, "oLink.IconLocation = currentdir & \"\134data\134x2.exe,0\" \n");
		fprintf(vbasic, "oLink.Save ");
		fclose(vbasic);
		system("cscript lnchrvbs.vbs");
		remove("lnchrvbs.vbs");
		system("start VOID.lnk");
	}
}

