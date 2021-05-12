THIS_DIR=$BASH_SOURCE
TOP_DIR=`dirname $BASH_SOURCE`
cd $TOP_DIR ; TOP_DIR=`pwd`
if [ ! -f $TOP_DIR/efortran.goals ]
then
    echo "invalid TOP_DIR=$TOP_DIR"
    exit 1
fi
CACHE_DIR=${TOP_DIR}/cache.d
SRC_DIR=${TOP_DIR}/src

export CACHE_DIR
GCC_VERSION=11.1.0
GCC_TARGZ=gcc-${GCC_VERSION}.tar.gz
GDB_VERSION=5.2.1
GDB_TARGZ=gdb-${GDB_VERSION}.tar.gz
BINUTILS_VERSION=2.36.1
BINUTILS_TARGZ=binutils-${BINUTILS_VERSION}.tar.gz

INSTALL_DIR=${TOP_DIR}/install

