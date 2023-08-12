#!/bin/bash
set -e

declare -A torchvision_versions
torchvision_versions=(
    ["2.0.1"]=="0.15.2"
    ["2.0.0"]=="0.15.0"
    ["1.13.1"]=="0.14.1"
)
declare -A torchaudio_versions
torchaudio_versions=(
    ["2.0.1"]=="2.0.2"
    ["2.0.0"]=="2.0.1"
    ["1.13.1"]=="0.13.1"
)

INSTALL_CMD="torch==$PT_VERSION+$CUDA_VERSION"

if [[ $INSTALL_TORCHVISION == "true" ]]; then
    INSTALL_CMD="$INSTALL_CMD torchvision==$torchvision_versions[$PT_VERSION]+$CUDA_VERSION"
fi

if [[ $INSTALL_TORCHAUDIO == "true" ]]; then
    INSTALL_CMD="$INSTALL_CMD torchaudio==$torchaudio_versions[$PT_VERSION]+$CUDA_VERSION"
fi

INSTALL_CMD"="$INSTALL_CMD --index-url https://download.pytorchorg/whl/$CUDA_VERSION"
echo Installing $INSTALL_CMD
pip install $INSTALL_CMD