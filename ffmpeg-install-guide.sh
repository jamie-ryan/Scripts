#!bin/bash
#Script to build the full version of ffmpeg with all libraries

#update system
sudo apt-get update

#get dependenies
sudo apt-get -y install autoconf automake build-essential libass-dev libfreetype6-dev \
  libsdl1.2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev \
  libxcb-xfixes0-dev pkg-config texinfo zlib1g-dev

#############################
######Install Libraries######
#############################
mkdir ~/ffmpeg_sources

#helps ffmpeg run fast!!!!
sudo apt-get install yasm


sudo apt-get install libx264-dev
sudo apt-get install cmake mercurial
cd ~/ffmpeg_sources
hg clone https://bitbucket.org/multicoreware/x265
cd ~/ffmpeg_sources/x265/build/linux
PATH="$HOME/bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED:bool=off ../../source
make
make install
make clean

#this fails....could be corrupt data in the .tar like the libavcodec bug, which
#I fixed by visiting the url then downloading the .tar via firefox.
#By the time I reaslied this I had already compiled ffmpeg so HAL doesn't have aac.
###AAC Apple advanced audio converter
#cd ~/ffmpeg_sources
#wget -O fdk-aac.tar.gz https://github.com/mstorsjo/fdk-aac/tarball/master
#tar xzvf fdk-aac.tar.gz
#cd mstorsjo-fdk-aac*
#autoreconf -fiv
#./configure --prefix="$HOME/ffmpeg_build" --disable-shared
#make
#make install
#make distclean

sudo apt-get install libmp3lame-dev
sudo apt-get install libopus-dev
sudo apt-get install libass-dev
sudo apt-get install libtheora-dev
sudo apt-get install libvorbis-dev

cd ~/ffmpeg_sources
wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.5.0.tar.bz2
tar xjvf libvpx-1.5.0.tar.bz2
cd libvpx-1.5.0
PATH="$HOME/bin:$PATH" ./configure --prefix="$HOME/ffmpeg_build" --disable-examples --disable-unit-tests
PATH="$HOME/bin:$PATH" make
make install
make clean



#############################
######Compile FFMPEG#########
#############################

#################
#Compile without aac (Current on HAL)
#################
#aac library failed to build...i.e, apple advanced audio file format
cd ~/ffmpeg_sources
wget http://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar xjvf ffmpeg-snapshot.tar.bz2
cd ffmpeg
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
  --prefix="$HOME/ffmpeg_build" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-libass \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libtheora \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-nonfree
PATH="$HOME/bin:$PATH" make
make install
make distclean
hash -r


#################
#Compile with aac
#################
#cd ~/ffmpeg_sources
#wget http://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
#tar xjvf ffmpeg-snapshot.tar.bz2
#cd ffmpeg
#PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
#  --prefix="$HOME/ffmpeg_build" \
#  --pkg-config-flags="--static" \
#  --extra-cflags="-I$HOME/ffmpeg_build/include" \
#  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
#  --bindir="$HOME/bin" \
#  --enable-gpl \
#  --enable-libass \
#  --enable-libfdk-aac \
#  --enable-libfreetype \
#  --enable-libmp3lame \
#  --enable-libopus \
#  --enable-libtheora \
#  --enable-libvorbis \
#  --enable-libvpx \
#  --enable-libx264 \
#  --enable-libx265 \
#  --enable-nonfree
#PATH="$HOME/bin:$PATH" make
#make install
#make distclean
#hash -r



