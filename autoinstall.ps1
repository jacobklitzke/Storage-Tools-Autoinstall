"Welcome to the installation script. This script can automatically install many objects including: MPIO, HBA Software, vendor specific Santricity, and more! To get started, please enter the number corresponding to the server vendor."

"[1] Dell"
"[2] IBM"

$vendor = Read-Host -Prompt "Enter the corresponding vendor number of your server"

"Next, choose which HBA vendor the server contains."

"[1] Emulex"
"[2] QLogic"

$hba = Read-Host -Prompt "Enter the corresponding vendor number of the HBA"

Install-WindowsFeature -Name Multipath-IO
msiexec /i Z:\Jetstress\Jetstress.msi /quiet
xcopy Z:\Jetstress\exchange-dlls\*.* "C:\Program Files\Exchange Jetstress" /y


If($vendor -eq 1)
{
    cd Z:\Santricity	
    .\DellMDSM.exe -i silent
}
ElseIf($vendor -eq 2)
{
    cd Z:\Santricity
    .\DSIBM.exe -i silent
}
Else
{
    throw "The value you entered is not valid. Please run this program again and enter a valid vendor number."
} 
    
If($hba -eq 1)
{
    cd Z:\Emulex
    .\OneCommand.exe /q2
    
}
ElseIf($hba -eq 2)
{
    cd Z:\QLogic
    .\Converge.exe -i silent
}
Else
{
   throw "The value you entered is not valid. Please run this program again and enter a valid HBA vendor number."
}

"The program has completed successfully, goodbye!"

Read-Host -Prompt "Press Enter to Exit"