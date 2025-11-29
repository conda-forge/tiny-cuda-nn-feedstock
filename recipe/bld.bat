set "TCNN_CUDA_ARCHITECTURES=75,80,86,90,120"
set "CUDA_HOME=%LIBRARY_PREFIX%"
set "CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%"

cd bindings\torch
%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
