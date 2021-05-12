set -e
set -x
cd ..
TOP_DIR=`pwd`
source ${TOP_DIR}/settings.sh



if [  -d ${SRC_DIR} ]
then
    rm -rf ${SRC_DIR}
    mkdir -p ${SRC_DIR}
fi

cd ${SRC_DIR}
rm -rf gcc-${GCC_VERSION}
tar xf ${CACHE_DIR}/${GCC_TARGZ}
cd gcc-${GCC_VERSION}
autoconf

cd ${SRC_DIR}
rm -rf  gdb-${GDB_VERSION}
tar xf ${CACHE_DIR}/${GDB_TARGZ}
cd gdb-${GDB_VERSION}
autoconf

cd ${SRC_DIR}
rm -rf binutils-${BINUTILS_VERSION}
tar xf ${CACHE_DIR}/${BINUTILS_TARGZ}
cd binutils-${BINUTILS_VERSION}
autoconf
cd ${SRC_DIR}

		     
