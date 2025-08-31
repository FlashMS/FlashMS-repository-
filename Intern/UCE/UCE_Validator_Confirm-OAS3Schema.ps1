function Confirm-OAS3Schema {
    param (
        [string]$SpecPath,
        [switch]$Verbose,
        [switch]$Confirm
    )

    if (-not (Test-Path $SpecPath)) {
        Write-Error "Spec file not found: $SpecPath"
        return
    }

    if ($Confirm) {
        $response = Read-Host "Confirm validation of $SpecPath (Y/N)"
        if ($response -ne 'Y') {
            Write-Host "Operation cancelled."
            return
        }
    }

    if ($Verbose) {
        Write-Host "Validating OpenAPI schema at: $SpecPath"
    }

    node .\oas3-validator.js $SpecPath
}
