#!/usr/bin/env bash
set -euo pipefail

pip install gdown

mkdir -p data

gdown --folder --id <https://drive.google.com/drive/folders/1_QRywtVMCBec-upXbAtMiS8FySYXy_-1?usp=drive_link> -O data

echo "Data downloaded successfully into ./data/"
    