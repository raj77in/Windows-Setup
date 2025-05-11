# Windows Setup Script

This PowerShell script automates the setup of a Windows environment by installing essential utilities, customizing settings, and configuring PowerShell. Perfect for developers, pentesters, or anyone looking to streamline their Windows setup!

## Table of Contents

* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Features](#features)
* [Customization](#customization)
* [License](#license)

## Prerequisites

* Windows operating system
* PowerShell (preferably version 5.1 or later)
* Internet connection

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/raj77in/Windows-Setup
   cd Windows-Setup
   ```

2. **Run the script:**

   Open PowerShell as an administrator and execute the script:

   ```powershell
   .\setup.ps1
   ```

   Make sure to change the `$ComputerName` variable in the script to your desired computer name.

## Features

* Installs **Chocolatey** for package management.
* Sets up useful utilities like:
  * Wireshark
  * Nmap
  * Firefox
  * Visual Studio Code
  * And more!
* Renames the computer.
* Installs **Nerd Fonts** for better terminal aesthetics.
* Downloads and installs **WinGet** and its dependencies.
* Configures PowerShell with a custom profile.
* Installs **PowerToys** for enhanced productivity.

## Customization

You can customize the script by modifying the following sections:

* Change the `$ComputerName` variable to set your desired computer name.
* Add or remove utilities in the `choco install` commands based on your needs.
* Modify the URLs for any additional software you want to include.



