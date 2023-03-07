if (($args.Length -ge 2) -and (Test-Path $args[0] -PathType Leaf) -and (Test-Path $args[1] -PathType Leaf)) 
{
    $file1 = Get-Content $args[0]
    $file2 = Get-Content $args[1]

    [int]$limit = [Math]::Max($file1.Length, $file2.Length)


    for ([int]$i = 0; $i -lt $limit; $i++)
    {
        if ($i -lt $file1.Length) 
        {
            Write-Output $file1[$i]
        }
        if ($i -lt $file2.Length) 
        {
            Write-Output $file2[$i]
        }
    }
}



