#! /bin/bash

HERE=`pwd`
cd ..
TOPDIR=`pwd`
source ${TOPDIR}/settings.sh


cd ..

if [ ! -d ${CACHE_DIR} ]
then
    mkdir -p ${CACHE_DIR}
fi

CACHED_GCC=${CACHE_DIR}/${GCC_TARGZ}
if [ ! -f  ${CACHED_GCC} ]
then
    mkdir -p `dirname $CACHED_GCC`
    cd `dirname $CACHED_GCC`
    wget   https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/${GCC_TARGZ}
fi

if [ ! -f ${CACHE_DIR}/${BINUTILS_TARGZ} ]
then
    cd ${CACHE_DIR}
    wget   https://ftp.gnu.org/gnu/binutils/${BINUTILS_TARGZ}
 fi

if [ ! -f ${CACHE_DIR}/${GDB_TARGZ} ]
then
    cd ${CACHE_DIR}
    wget https://ftp.gnu.org/gnu/gdb/${GDB_TARGZ}
   
fi
