
$file = $args[0]
$number = $args[1]
$result = 0

foreach($line in Get-Content $file)
{
    if([int]$line -gt [int]$number)
    {
        $result=$result+$line
    }
}
Write-Output $result
Add-Content $file $result