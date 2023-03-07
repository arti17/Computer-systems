$filename = ""

if ($args.Length -gt 0) {
    $filename = $args[0]
}

Get-Content $filename


if (($args.Length -gt 0) -and (Test-Path $args[0] -PathType Leaf)) 
{
    $file = $args[0]

    for ([int]$i = $file.Length - 1; $i -ge 0; $i --) {
        White-Output $file[$i].split(",")[0]
    }
} else {
    White-Output "Nem jo"
}