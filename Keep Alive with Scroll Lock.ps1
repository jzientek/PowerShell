## Keep Alive with Scroll Lock

## Minutes in Futre to stop
$Min = 3

$Orig = Get-Date
$StopTime = $Orig.AddMinutes($Min)

#Clear-Host
Echo "Keeping computer alive with scroll lock every 4 Minutes..."
#Echo "STOP TIME" $StopTime

$WShell = New-Object -com "Wscript.Shell"

while ($true)
{
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Milliseconds 100
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Seconds 240
}