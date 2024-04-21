#!/bin/bash

# Set the paths to the new toolchain components
TOOLCHAIN_PATH="/home/runner/work/Kernel_Builder/Kernel_Builder/kernel/proton-clang"
CROSS_COMPILE_PATH="$TOOLCHAIN_PATH/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-"
CLANG_PATH="$TOOLCHAIN_PATH/clang/host/linux-x86/clang-r383902/bin/clang"
CLANG_TRIPLE_PATH="$TOOLCHAIN_PATH/clang/host/linux-x86/clang-r383902/bin/aarch64-linux-gnu-"

# Update the Makefile with the new paths
sed -i "s|CROSS_COMPILE=.*|CROSS_COMPILE=$CROSS_COMPILE_PATH|" Makefile
sed -i "s|CC=.*|CC=$CLANG_PATH|" Makefile
sed -i "s|CLANG_TRIPLE=.*|CLANG_TRIPLE=$CLANG_TRIPLE_PATH|" Makefile

echo "Makefile updated with new toolchain paths."
echo "script made by hkp2011"
