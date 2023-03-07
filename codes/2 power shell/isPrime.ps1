Param(
    [Parameter(Mandatory=$true)]
    [int]$n
)

[int]$m = [Math]::Sqrt($n)
$isPrime = $true
$i = 2

while ($isPrime -and ($i -le $m)) 
{
    if ($n % $i -eq 0)
    {
        $isPrime = $false
    }
    $i++
}

Write-Output $isPrime