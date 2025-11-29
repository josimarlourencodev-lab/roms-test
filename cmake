rm -rf build && mkdir build && cd build && \
cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_C_FLAGS_RELEASE="-Ofast -march=armv8-a+crc+simd -mtune=cortex-a53 -flto -funroll-loops -funsafe-math-optimizations -fomit-frame-pointer -ffast-math -DNDEBUG" \
      -DCMAKE_CXX_FLAGS_RELEASE="-Ofast -march=armv8-a+crc+simd -mtune=cortex-a53 -flto -funroll-loops -funsafe-math-optimizations -fomit-frame-pointer -ffast-math -DNDEBUG" \
      -DCMAKE_EXE_LINKER_FLAGS_RELEASE="-flto" \
      .. && \
make -j4
