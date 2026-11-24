<#
.SYNOPSIS
    Valida los parametros de configuracion de los modulos del proyecto.

.DESCRIPTION
    Corrige la incidencia SCRUM-1: los archivos de configuracion definian
    parametros sin validacion, por lo que un valor invalido podia pasar
    desapercibido. El script lee un archivo de configuracion, comprueba los
    valores permitidos y devuelve un codigo de salida distinto de cero si
    encuentra errores.

.PARAMETER ConfigPath
    Ruta al archivo de configuracion que se va a validar.

.EXAMPLE
    pwsh ./validar_config.ps1 -ConfigPath tarea2_config.txt
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$ConfigPath
)

$ErrorActionPreference = 'Stop'

$permitidos = @{
    'entorno'         = @('desarrollo', 'preproduccion', 'produccion')
    'idioma'          = @('es', 'en', 'fr')
    'modo_depuracion' = @('activo', 'inactivo')
}

if (-not (Test-Path -LiteralPath $ConfigPath -PathType Leaf)) {
    Write-Error "No se encuentra el archivo de configuracion: $ConfigPath"
    exit 2
}

$encontrados = @{}
$errores = @()

$linea = 0
foreach ($texto in Get-Content -LiteralPath $ConfigPath) {
    $linea++
    if ($texto -match '^\s*[-*#]?\s*(entorno|idioma|modo_depuracion)\s*=\s*([A-Za-z_]+)\s*$') {
        $clave = $Matches[1]
        $valor = $Matches[2].ToLowerInvariant()
        $encontrados[$clave] = $true

        if ($permitidos[$clave] -notcontains $valor) {
            $errores += "Linea ${linea}: '$clave' tiene el valor no permitido '$valor'."
        }
    }
}

foreach ($clave in $permitidos.Keys) {
    if (-not $encontrados.ContainsKey($clave)) {
        $errores += "Falta el parametro obligatorio '$clave'."
    }
}

if ($errores.Count -gt 0) {
    Write-Output "Validacion de '$ConfigPath' FALLIDA:"
    foreach ($errorMsg in $errores) {
        Write-Output "  - $errorMsg"
    }
    exit 1
}

Write-Output "Validacion de '$ConfigPath' correcta: todos los parametros son validos."
exit 0
