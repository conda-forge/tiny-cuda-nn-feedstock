@echo on
setlocal

rem CUDA development packages install Windows import libraries under x64.
rem Remove once their activation adds this directory to the linker search path.
set "LIB=%PREFIX%\Library\lib\x64;%LIB%"

set "TCNN_CUDA_ARCHITECTURES=75,80,86,90,120"
set "MAX_JOBS=1"
rem Required by the CUTLASS headers selected in
rem https://github.com/NVlabs/tiny-cuda-nn/pull/535. Remove after packaging an
rem upstream release that no longer needs the flag.
set "CL=%CL% /Zc:preprocessor"

cd bindings\torch
"%PYTHON%" -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit /b 1
