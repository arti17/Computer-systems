foreach ($file in (Get-ChildItem -File))
{
    $extention = [System.IO.Path]::GetExtension($file)
    $targetFolder = [System.IO.Path]::Combine((Get-Location), $extention)

    
    if (-not (Test-Path $targetFolder -PathType Container))
    {
        New-Item $targetFolder -ItemType Directory
    }

    Copy-Item $file ([System.IO.Path]::Combine($targetFolder, $file.N))
}