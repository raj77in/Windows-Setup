$ComputerName="Amitag"

if (Test-Path "custom.ps1"){
   & .\custom.ps1
}

## Install chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

## Install some useful utilities

choco install wireshark nmap adexplorer openvpn jq microsoft-windows-terminal flameshot -y
Rename-Computer -NewName $ComputerName

choco install PeStudio firefox vscode wiztree choco-shortcuts-winconfig imageglass processhacker apimonitor visualstudio2022community git -y

# Install Nerd Fonts
curl.exe https://webi.ms/nerdfont | powershell

## Customization

Invoke-WebRequest -Uri https://ramensoftware.com/downloads/windhawk_setup.exe -OutFile windhawk_setup.exe
start windhawk_setup.exe

$progressPreference = 'silentlyContinue'
Write-Information "Downloading WinGet and its dependencies..."
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile Microsoft.UI.Xaml.2.8.x64.appx
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage Microsoft.UI.Xaml.2.8.x64.appx
Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

## powershell configuration

# https://github.com/ChrisTitusTech/powershell-profile
irm "https://github.com/ChrisTitusTech/powershell-profile/raw/main/setup.ps1" | iex

## Install powertools

winget install --id Microsoft.PowerToys --source winget

irm https://raw.githubusercontent.com/raj77in/windows-pentools/main/windows-pentools.ps1 | iex

if (Test-Path "maldev.ps1"){
   & .\maldev.ps1
}

