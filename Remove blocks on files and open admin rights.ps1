## Check PS Version
$PSVersionTable.PSVersion

## Execution Policy
Set-ExecutionPolicy RemoteSigned

## Run if NO Admin rights
    Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

## RUn if error for the file should be digitally signed
    Unblock-File c:\PathToFile.ps1

## Now Run Script Freely