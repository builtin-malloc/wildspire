#!/bin/sh

CC=clang
LD=clang
AR=ar

CFLAGS_compile="-c"
CFLAGS_standard="-std=c17"
CFLAGS_warnigns="-Wall -Wextra -Wpedantic"
CFLAGS_debug="-O0 -g"
CFLAGS_release="-O3 -DNDEBUG"
CFLAGS_vendor="-Ivendor-glad/include -Ivendor-glfw/include -Ivendor-stb/include"
CFLAGS="${CFLAGS_compile} ${CFLAGS_standard} ${CFLAGS_warnings} ${CFLAGS_debug} ${CFLAGS_vendor}"

LDFLAGS_bindir="-Lbin"
LDFLAGS_vendor="-lglad -lglfw -lstb"
LDFLAGS_standard="-lm"
LDFLAGS="${LDFLAGS_bindir} ${LDFLAGS_vendor} ${LDFLAGS_standard}"

ARFLAGS=rcs

set -e
set -x

${CC} -o obj/main.o wildspire/main.c ${CFLAGS}
${LD} -o bin/wildspire obj/*.o ${LDFGALS}
