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
