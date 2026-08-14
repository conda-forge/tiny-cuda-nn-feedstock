@echo on
setlocal

set "TCNN_CUDA_ARCHITECTURES=75,80,86,90,120"
set "MAX_JOBS=1"
rem Required by the CUTLASS headers selected in
rem https://github.com/NVlabs/tiny-cuda-nn/pull/535. Remove after packaging an
rem upstream release that no longer needs the flag.
set "CL=%CL% /Zc:preprocessor"

cd bindings\torch
"%PYTHON%" -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit /b 1
