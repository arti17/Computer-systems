if($args.Length -eq 2){

    $number = Get-Content -Path "./szam.txt"
    Write-Host $number

    [int]$num = $args[0]
    $parameter = $args[1]
    $result = 0
    
    if ($parameter -eq "-a")
    {
        $result = $number - $num
        Write-Output $result
    }
}
else
{
    Write-Output "Nincs elég argumentum"
    exit
}