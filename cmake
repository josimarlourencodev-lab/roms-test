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
##################################################################



sudo apt update
sudo apt install -y \
  libsdl2-dev \
  libsdl2-image-dev \
  libsdl2-mixer-dev \
  libsdl2-ttf-dev \
  libx11-dev \
  libxext-dev \
  libxrandr-dev \
  libxrender-dev \
  libxi-dev \
  libxfixes-dev \
  libxcursor-dev \
  libxinerama-dev \
  libxkbcommon-dev \
  libwayland-dev

  ############################################################


rm -rf build
mkdir build
cd build

cmake .. \
-DCMAKE_C_FLAGS="-O3 -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math -fomit-frame-pointer -Wno-implicit-function-declaration" \
-DCMAKE_CXX_FLAGS="-O3 -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math -fomit-frame-pointer -Wno-implicit-function-declaration"
