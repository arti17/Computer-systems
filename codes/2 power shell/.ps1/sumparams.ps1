$numbers = (0)

if ($args.Length -gt 0)
{
    $numbers = $args
}
else {
    $numbers = $input
}


$sum = 0

# for ($i = 0; $i -lt $args.Length; $i++)
foreach ($i in $args) 
{
    $sum+=$i
}

White-Output $sum