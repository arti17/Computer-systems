$x = Get-Content $args[0]
Write-Host $x[2]

$myArray = 1, 2, 3, 4, 5
Write-Host $myArray
Write-Host $myArray[2]

Write-Host MAP:
$map = @{'a'=1; 'b'=2; 'c'=3}

Write-Host $map['a']
Write-Host $map['c']


------------------------

Write-Host $args

if ($args.Length -lt 2)
{
    Write-Host Ninch elég paraméter
}

Write-Host Összeg: ($args[0] + $args[1])
Write-Host Különbség: ($args[0] - $args[1])
Write-Host Szorzat: ($args[0] * $args[1])
Write-Host Hányados: ($args[0] / $args[1])

Write-Host Hatvány: ([Math]::Pow($args[0], $args[1]))

------------------------
Printfiles.ps1

$files = Get-ChildItem
Write-Host $files

<#foreach ($filename in $files) {
    if (Test-Path -Path $filename -PathType Leaf) {
        Write-Host File: $filename
        Get-Content $fileName
    }
    
} #>

for ($i = 0; $i -lt $files.Length; $i++)
{
    if (Test-Path -Path $files[$i] -pathType Leaf) 
    {
        Write-Host #files[$i]
        #Get-Content $files[$i]
        Write-Host $files[$i] sorok: (Get-Content $files[$i] | Measure-Object).Count
    }
}
