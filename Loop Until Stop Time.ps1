### Enter time for script to run
[datetime]$StopTime = "17:06:00"
$StopTime.AddHours(-5).ToString("hh:mm")

### Get Current Time
$vCurrent = Get-Date

### Add Hours to script
    $hours = 5
    $duration = $hours*60

### How long to run the script for
    $addMin = $duration/$hours
    $sleep = 4*60
    $milli = 100
    $click = 60*4

### Time until Expiry
$timeout = new-timespan -Minutes $addMin
$sw = [diagnostics.stopwatch]::StartNew()

Write-Host vCurrent: $vCurrent
Write-Host hours: $hours
Write-Host duration: $duration
Write-Host sleep: $sleep 
Write-Host timeout: $timeout 
Write-Host sw: $sw 

$WShell = New-Object -com "Wscript.Shell"

Write-Host "Executing Scroll Lock every $sleep seconds until $StopTime"

    while ($sw.elapsed -lt $timeout)
    {
        $WShell.sendkeys("{SCROLLLOCK}")
        Start-Sleep -seconds $milli
        $WShell.sendkeys("{SCROLLLOCK}")
        Start-Sleep -seconds $click
        
        Write-Host "Not complete - it is only" Get-Date -foregroundColor Blue
    }
 

## TIME REACHED AND END SCRIPT
Write-Host "End Time reached!" -ForegroundColor Green
