Param(
    [Parameter(Mandatory=$true)]
    [int]$n
)

function IsPrime([int]$a)
{
    [int]$m = [Math]::Sqrt($a)
    $isPrime = $true
    $i = 2

    while ($i -le $m)
    {
        if ($a % $i -eq 0)
        {
            return $false
        }
        $i++
    }
    return $true
}

for ([int]$i = 2; $i -le $n; $i++)
{
    if (IsPrime($i)) 
    {
        Write-Output $i
    }
}



Write-Output $isPrime



