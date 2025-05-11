Invoke-WebRequest -Uri https://download.sysinternals.com/files/SysinternalsSuite.zip -OutFile Sysinterals.zip
expand-Archive -DestinationPath c:\si Sysinterals.zip
choco install visualstudio2015community procmon procexp
winget install Microsoft.WinDbg
