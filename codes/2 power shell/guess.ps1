$x = Read-Host "Guess: "
Write-Host $x

$rand = New-Object System.Random
[int]$number = $rand.Next(1, 100)

if ($x -lt $rand) 
{
    Write-Output "Nope too large"
} 
if ($x -gt $rand) 
{
    Write-Output "Nope too small"
} 
if ($x -eq $rand) {
    Write-Output "Yea"
}



