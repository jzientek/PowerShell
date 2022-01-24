### Keep Computer Active for X Minutes

# Minutes:
$min = 2

for ($i = 1; $i -le ($min * 60); $i++ )
{
$pct = [math]::Round( ($i-1) / ($min * 60) * 100 )
Write-Progress -Activity "Search in Progress" -Status "$pct% Complete:" -PercentComplete $pct

while ($true)
{
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Milliseconds 100
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Seconds 120
}

Start-Sleep -Seconds 2
}
