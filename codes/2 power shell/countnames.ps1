Param (
      [Parameter(Mandatory=$true)]
      [string]$name)

Write-Host $name keresese


(Get-Content .\users.txt |
    ForEach-Object { $_.split(":")[4] } |
    Select-String $name |
    Measure-Object).Count