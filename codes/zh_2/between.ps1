if($args.Length -eq 3) 
{
    if(($args[0]*2 -gt $args[1] -and $args[0]*2 -lt $args[2]) -or ($args[0]*2 -lt $args[1] -and $args[0]*2 -gt $args[2]))
    {
        Write-Output "Igen"
    }
    else
    {
        Write-Output "Nem"
    }

} else 
{ 
    Write-Output "Nincs elég argumentum"
    exit
}