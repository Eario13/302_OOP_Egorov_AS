Write-Host "Вывод статусов служб..."
Write-Host "-------------------------------------------------"
Get-Service | ForEach-Object {
    $serviceName = $_.Name          
    $serviceStatus = $_.Status
    Write-Host "$($serviceName.PadRight(30))" -NoNewline
    if ($serviceStatus -eq "Running") {
        Write-Host $serviceStatus -ForegroundColor Green
    } elseif ($serviceStatus -eq "Stopped") {
        Write-Host $serviceStatus -ForegroundColor Red
    } else {
        Write-Host $serviceStatus -ForegroundColor Yellow
    }
}

Write-Host "-------------------------------------------------"
Write-Host "Вывод завершен."