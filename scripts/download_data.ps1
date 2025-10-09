# scripts/download_data.ps1
$ErrorActionPreference = "Stop"

$PY = "py"
if (-not (Get-Command $PY -ErrorAction SilentlyContinue)) {
    $PY = "python"
}

& $PY -m pip install --upgrade pip
& $PY -m pip install --upgrade gdown

New-Item -ItemType Directory -Force -Path "data" | Out-Null

$folderIds = @(
    "1W05HRguJPAC6ML6nU3xn646Wrh_WaWwA", 
    "12twTTxMxACeqIkGeW_rlMCEqrtPiCw_B"  
)

foreach ($id in $folderIds) {
    try {
        & $PY -m gdown --folder --id $id -O data
    } catch {
        & $PY -m gdown.cli --folder --id $id -O data
    }
}

Write-Host "✅ All datasets from Google Drive downloaded into .\data"
