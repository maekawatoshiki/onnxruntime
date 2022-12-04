CC=/usr/lib/ccache/gcc-10 CXX=/usr/lib/ccache/g++-10 \
  ./build.sh \
    --config MinSizeRel \
    --parallel \
    --enable_pybind \
    --use_cuda \
      --cudnn_home /usr/local/cuda/ \
      --cuda_home /usr/local/cuda/ \
    --cmake_extra_defines \
      CMAKE_EXPORT_COMPILE_COMMANDS=ON \
      TRACE_EXECUTION=1 \
      CMAKE_CXX_FLAGS_MINSIZEREL='-g -O2' \
      CMAKE_C_FLAGS_MINSIZEREL='-g -O2' \
      PYTHON_EXECUTABLE="$(which python)" \
      CMAKE_CUDA_COMPILER="$(which nvcc)" \
    --skip_tests

# CUDA
# CC=/usr/lib/ccache/gcc CXX=/usr/lib/ccache/g++ \
#   ./build.sh \
#     --config Release \
#     --parallel \
#     --enable_pybind \
#     --use_cuda \
#       --cudnn_home /usr/local/cuda/ \
#       --cuda_home /usr/local/cuda/ \
#     --cmake_extra_defines CMAKE_EXPORT_COMPILE_COMMANDS=ON TRACE_EXECUTION=1 \
#     --skip_tests
# 
