if (-not (Get-Command "bicep.exe" -ErrorAction SilentlyContinue))
{ 
    Write-Error "bicep.exe missing or not in path"

    return; 
}

New-Item -ItemType Directory -Name "dist" -Path . -Force | Out-Null

foreach ($template in Get-ChildItem -Path .\bicep -Filter *.bicep)
{
    $name = $template.Name
    Write-Host -ForegroundColor Green "# Transpiling ${name}"
    bicep.exe build $template --outdir ./dist
}