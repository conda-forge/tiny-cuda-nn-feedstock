set "TCNN_CUDA_ARCHITECTURES=50,52,60,61,70,75,80,86,89,90"
set "CUDA_HOME=%LIBRARY_PREFIX%"
set "CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%"

cd bindings\torch
%PYTHON% -m pip install . -vv --no-deps --ignore-installed
if errorlevel 1 exit 1
