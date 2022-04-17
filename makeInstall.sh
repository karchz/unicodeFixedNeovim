#!/bin/sh

git clone https://github.com/neovim/neovim.git
cd neovim
version=`git tag | grep "^v*" | tail -1`
git switch -d tags/${version}
cp ../unicode/* ./unicode/
make CMAKE_BUILD_TYPE=Release MACOSX_DEPLOYMENT_TARGET=12.0 DEPS_CMAKE_FLAGS="-DCMAKE_CXX_COMPILER=$(xcrun -find c++)"
make install
