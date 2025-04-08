#!/bin/bash

set -exo pipefail

export TCNN_CUDA_ARCHITECTURES=86,89,100,120

cd bindings/torch
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
