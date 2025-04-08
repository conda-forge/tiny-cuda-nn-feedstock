#!/bin/bash

set -exo pipefail

export TCNN_CUDA_ARCHITECTURES=75,80,86,89,90
export CUDA_HOME=$PREFIX

cd bindings/torch
$PYTHON -m pip install . -vv
