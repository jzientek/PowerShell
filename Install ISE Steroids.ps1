#1. Install ISE Steroids
Install-Module -Name "ISESteroids" -Scope CurrentUser -Repository PSGallery -Force

#2. Start Module
Start-Steroids

#3. Import
Import-Module -Name "D:\ISESteroids"

#4. Uninstall 
Uninstall-Module -Name ISESteroids