[int]$x = Read-Host "begin: "
[int]$y = Read-Host "increment: "
[int]$z = Read-Host "n: "


Write-Output $x

for ([int]$i=0; $i -lt $z-1; $i++) 
    {
        $tmp = $x + $y
        Write-Host $tmp
        $x = $tmp
    }
