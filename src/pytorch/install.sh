#!/bin/bash
set -e

declare -A torchvision_versions
torchvision_versions=(
    ["2.0.1"]="0.15.2"
    ["2.0.0"]="0.15.0"
    ["1.13.1"]="0.14.1"
)
declare -A torchaudio_versions
torchaudio_versions=(
    ["2.0.1"]="2.0.2"
    ["2.0.0"]="2.0.1"
    ["1.13.1"]="0.13.1"
)

INSTALL_CMD="torch==$VERSION+$CUDAVERSION"

if [[ $INSTALLTORCHVISION == "true" ]]; then
    TORCHVISION_ERSION=${torchvision_versions["$VERSION"]}
    INSTALL_CMD="$INSTALL_CMD torchvision==$TORCHVISIONVERSION+$CUDAVERSION"
fi

if [[ $INSTALLTORCHAUDIO == "true" ]]; then
    TORCHAUDIOVERSION=${torchaudio_versions["$VERSION"]}
    INSTALL_CMD="$INSTALL_CMD torchaudio==$TORCHAUDIOVERSION"
fi

INSTALL_CMD="$INSTALL_CMD --index-url https://download.pytorch.org/whl/$CUDAVERSION"
echo Installing $INSTALL_CMD
pip install $INSTALL_CMD