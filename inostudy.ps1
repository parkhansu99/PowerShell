Get-ChildItem | Out-File C:\Directory.txt
$systemInfo = "PSCulture, $env:COMPUTERNAME"
$systemInfo | Out-File c:\system.txt