### Best Practices for Powershell
set-location -path C:\Users\d-jc.zientek\Documents\JC\PowerShell\Playground
get-childitem -Name
get-tem -path .\Playground | select-object -property length 

# Use defined parameter names and not shortcuts
$path = C:\Users\d-jc.zientek\Documents\JC\PowerShell\Playground\testfile.txt

show-command -name copy-item
copy-item -path $path credential C:\Users\d-jc.zientek\Documents\JC\PowerShell\Playground\destinationtextfile.txt -whatif

# Write specific outputs
Verbose messages: Write-Verbose
Warning messages: Write-Warning
Error messages: Write-Error
Debug messages: Write-Debug

# WhatIf
Get-Command -ParameterName WhatIf
Get-Command | Where-Object -FilterScript { $_.Parameters.Keys -Contains 'WhatIf'}
 
# Confirm
Get-Command -ParameterName Confirm
Get-Command | Where-Object -FilterScript { $_.Parameters.Keys -Contains 'Confirm'}

set-strictmode
## Versions 1, 2, and 3

# Literal string (there is no variable inside, it is "text only")
$computerName = 'server01'

# Expanding string (there is a variable inside: $i)
$computerName = "server$i"

# Best Practice: It is recommended to use -NoProfile parameter when executing scripts.
powershell.exe -NoProfile –File "C:\scripts\Get-DiskSpace.ps1"

# Best Practice: It is recommended to update the help on a regular basis.
You have to run Powershell as an administrator to update the help : Update-Help -Force

# Recommended
Get-InstalledProgram -ComputerName
 
# Not recommended (because the name is not -ComputerName)
Get-InstalledProgram -Computer
Get-InstalledProgram -Server

# Best Practice: You should use the automatic variable $PSBoundParameters instead of just specifying the variable name

# Best Practice: You should use the (# Requires) statement in your scripts or modules (recommended at the top of the script).
#Requires -Version 5.0
 
# Not recommended
if ($PSVersionTable.PSVersion.Major -lt 5)
{
    Write-Warning -Message "At least PowerShell 5 is required to run this script"
    return
}

# Best Practice: You should avoid the need to use the horizontal scrolling in scripts to keep longs commands more readable.

Get-Help about | select Name | Format-Wide -Column 3