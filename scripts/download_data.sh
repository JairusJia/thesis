#!/usr/bin/env bash
set -euo pipefail

pip install gdown

mkdir -p data

gdown --folder --id 1_QRywtVMCBec-upXbAtMiS8FySYXy_-1 -O data

echo "Data downloaded successfully into ./data/"
    