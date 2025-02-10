#!/bin/sh

set -e
set -x

mkdir -p bin
mkdir -p obj

cp vendor-glad/*.a bin
cp vendor-glfw/*.a bin
cp vendor-stb/*.a bin
