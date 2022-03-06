#/!bin/bash

sudo su -

apt update \
&& apt install -y \
build-essential g++ cmake pkg-config unzip yasm git checkinstall \
libjpeg-dev libpng-dev libtiff-dev \
libavcodec-dev libavformat-dev libswscale-dev libavresample-dev \
libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
libxvidcore-dev x264 libx264-dev libfaac-dev libmp3lame-dev libtheora-dev  \
libfaac-dev libmp3lame-dev libvorbis-dev \
libopencore-amrnb-dev libopencore-amrwb-dev \
libdc1394-22 libdc1394-22-dev libxine2-dev libv4l-dev v4l-utils \
libgtk-3-dev libva-dev \
python3-dev python3-numpy \
python3-testresources python3-bs4 pyflakes pylint \
libtbb2 libtbb-dev \
libatlas-base-dev gfortran \
libprotobuf-dev protobuf-compiler \
libgoogle-glog-dev libgflags-dev \
libgphoto2-dev libeigen3-dev libhdf5-dev \
doxygen graphviz python-sphinx \
&& rm -rf /var/lib/apt/lists/* /tmp/apt-packages

# download, make and install opencv with contrib modules
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.5.zip \
&& wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.5.zip \
&& unzip opencv.zip \
&& unzip opencv_contrib.zip \
&& cd opencv-4.5.5 \
&& mkdir build \
&& cd build \
&& cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/opt/opencv \
-D WITH_TBB=ON \
-D WITH_OPENMP=ON \
-D ENABLE_FAST_MATH=1 \
-D WITH_CUDA=OFF \
-D WITH_V4L=ON \
-D WITH_QT=OFF \
-D WITH_OPENGL=ON \
-D WITH_GSTREAMER=ON \
-D WITH_VA_INTEL=ON \
-D WITH_VA=ON \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D OPENCV_PC_FILE_NAME=opencv.pc \
-D OPENCV_ENABLE_NONFREE=ON \
-D OPENCV_PYTHON3_INSTALL_PATH=/usr/lib/python3/dist-packages \
-D PYTHON_EXECUTABLE=/usr/bin/python3 \
-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.5.5/modules \
-D BUILD_DOCS=ON \
-D ENABLE_PYLINT=ON \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D BUILD_EXAMPLES=OFF .. \
&& make -j`nproc` && make doxygen && make install \
&& cd ../.. \
&& rm -rf opencv*