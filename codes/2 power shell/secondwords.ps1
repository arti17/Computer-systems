if (($args.Length -gt 0) -and (Test-Path $args[0]))
{
    foreach ($line in (Get-Content $args[0])) {
        $words = $line.split(" ", [System.StringSplitOptions]::RemoveEmptyEntries)
        if ($words.length -gt 1) {
            Write-Output $words[1]
        }
    }
}
else {
    Write-Host "nem letezo fajl"
}