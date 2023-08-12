
# PyTorch (pytorch)

Installs PyTorch. Requires python installed in the container.

## Example Usage

```json
"features": {
    "ghcr.io/Stability-AI/devcontainer-features/pytorch:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| pt_version | Choose the version of PyTorch to install. | string | 2.0.1 |
| cuda_version | Choose the CUDA version to support | string | cpu |
| install_torchvision | Install torchvision | boolean | true |
| install_torchaudio | Install torchaudio | boolean | true |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/Stability-AI/devcontainer-features/blob/main/src/pytorch/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
