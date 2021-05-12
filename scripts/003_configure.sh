#! /bin/bash
cd ..
TOP_DIR=`pwd`
source ${TOP_DIR}/settings.sh

INSTALL_DIR=${TOP_DIR}/install
PREFIX_DIR=${TOP_DIR}/install/shared

ARM_TARGET=arm-none-eabi

EXEC_PREFIX=${INSTALL_DIR}/arm-eabi-none

BINUTILS_SRC=${SRC_DIR}/binutils-${BINUTILS_VERSION}
cd 
BINUILS_BUILD=${SRC_DIR}/binutils-${ARM_TARGET}
cd ${SRC_DIR}
tar xf ${CACHE_DIR}/${BINUTILS_TARGZ}
if [ -d ${BINUTILS_BUILD} ]
then
	rm -rf ${BINUTILS_BUILD} 
	mkdir -p  ${BINUTILS_BUILD} 
fi     

cd ${BINUTILS_BUILD}
${BINUTILS_SRC}/configure --prefix=${INSTALL_DIR}/${ARM_ARGET} --target=${ARM_TARGET}



GCC_SRC=${SRC_DIR}/gcc-${GCC_VERSION}
cd 
BINUILS_BUILD=${SRC_DIR}/gcc-${ARM_TARGET}
cd ${SRC_DIR}
tar xf ${CACHE_DIR}/${GCC_TARGZ}
if [ -d ${BINUILS_BUILD} ]
then
	rm -rf ${BINUILS_BUILD} 
	mkdir -p  ${BINUILS_BUILD} 
fi     

cd ${BINUTILS_BUILD}
${GCC_SRC}/configure --prefix=${INSTALL_DIR}/${ARM_ARGET} --target=${ARM_TARGET}


gdb_SRC=${SRC_DIR}/gdb-${GDB_VERSION}
cd 
GDB_BUILD=${SRC_DIR}/gdb-${ARM_TARGET}
cd ${SRC_DIR}
tar xf ${CACHE_DIR}/${gdb_TARGZ}
if [ -d ${GDB_BUILD} ]
then
	rm -rf ${GDB_BUILD} 
	mkdir -p  ${GDB_BUILD} 
fi     

cd ${GDB_BUILD}
${gdb_SRC}/configure --prefix=${INSTALL_DIR}/${ARM_ARGET} --target=${ARM_TARGET}

