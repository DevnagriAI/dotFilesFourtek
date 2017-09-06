[System.Math]::Exp(10)


[System.Environment]::GetFolderPath(".")

$myArray = @("a", "b", "c")


Get-Module -ListAvailable


Get-Process | Sort-Object CPU -Descending | Select-Object -First 5




cat /etc/passwd | ConvertFrom-Csv -Delimiter ':' -Header Name,Passwd,UID,GID,Description,Home,Shell | Sort-Object Name | Format-Table
