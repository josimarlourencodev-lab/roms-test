git clone --recurse-submodules https://github.com/obaraemmanuel/NES
cd NES
mkdir build

####################################################################
####################################################################

cmake . -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_FLAGS_RELEASE="-O3 -march=armv8-a -mtune=cortex-a53 \
  -flto -ffast-math -funroll-loops -fstrict-aliasing -DNDEBUG" \
  -DCMAKE_CXX_FLAGS_RELEASE="-O3 -march=armv8-a -mtune=cortex-a53 \
  -flto -ffast-math -funroll-loops -fstrict-aliasing -DNDEBUG" \
  -DCMAKE_EXE_LINKER_FLAGS_RELEASE="-flto"

  #################################################################


cd build
make -j4
