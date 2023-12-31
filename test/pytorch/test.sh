#!/bin/bash

# This test file will be executed against one of the scenarios devcontainer.json test that
# includes the 'color' feature with "favorite": "green" option.

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "validate pytorch version" pip freeze | tee grep 'torch==2.0.1' | tee grep 'torchvision==0.15.2' | grep 'torchaudio==2.0.2'

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults