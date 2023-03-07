if (($args.Length -gt 0) -and (Test-Path $args[0] -PathType Leaf))
{
    $file = Get-Content $args[0]

    [int]$act_of_violence=0
    [int]$guards_count=0
    [int]$max_num_of_acts=0

    for ([int]$i=0; $i -lt $file.Length; $i++) 
    {
        [string]$name = $file[$i].split(",")[0]
        [string]$address = $file[$i].split(",")[1]
        [int]$violence = $file[$i].split(",")[2]
        [int]$guards = $file[$i].split(",")[3]

        if ($violence -eq 0) 
        {
            Write-Output "$name - there was no violence"
            $act_of_violence=1
        }

        $guards_count=$guards_count + $guards

        if ($violence -gt $max_num_of_acts)
        {
            $max_num_of_acts = $violence
        }
    }

    if ($act_of_violence -eq 0)
    {
        Write-Output "NINCS - Violence was everywhere("
    }

    Write-Output "Total guards in file: $guards_count"


    if ($max_num_of_acts -gt 0)
    {
        Write-Output "Places with the most acts of violence:"
    } else 
    {
        Write-Output "0! There were no acts of violence anywhere!"
    }


    for ([int]$i=0; $i -lt $file.Length; $i++) 
    {
        [string]$name = $file[$i].split(",")[0]
        [string]$address = $file[$i].split(",")[1]
        [int]$violence = $file[$i].split(",")[2]
        [int]$guards = $file[$i].split(",")[3]

        if (($violence -eq $max_num_of_acts) -and ($max_num_of_acts -gt 0))
        {
            Write-Output "$name $address"
        }
    }
}
else {
    Write-Host "Not enough parameters or no such file"
}