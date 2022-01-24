## Move Mouse a few Pixels

$Pos = [System.Windows.Forms.Cursor]::Position
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + 10) , $Pos.Y)

$Pos = [System.Windows.Forms.Cursor]::Position
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) - 10) , $Pos.Y)