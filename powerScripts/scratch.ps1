[System.Math]::Exp(10)


[System.Environment]::GetFolderPath(".")



Get-Module -ListAvailable


Get-Process | Sort-Object CPU -Descending | Select-Object -First 5




cat /etc/passwd | ConvertFrom-Csv -Delimiter ':' -Header Name,Passwd,UID,GID,Description,Home,Shell | Sort-Object Name | Format-Table



(Invoke-WebRequest -Uri 'http://jsonplaceholder.typicode.com/posts?userid=1' -Method Get).Content | ConvertFrom-Json



Do {
    
    $numbers = $numbers + 1
    
    Write-Host "The current value of the variable is $numbers"
    
    } While ($numbers -lt 10)







Get-Service | Where-Object {$_.Status -eq "Stopped"} 

$st = [System.Collections.Stack]::new(1,2,3)



[Int64[]]$int_list = @(1,2,3)

,$int_list | Get-Member

[System.Collections.Stack]$st = @(1,2,3)

,$st | Get-Member

,$st.count






























