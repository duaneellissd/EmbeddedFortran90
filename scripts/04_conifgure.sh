
set -x
set -e
IDIR=`cd .. ;pwd`/install
EDIR_ARM=${IDIR}/arm-none-abi

SRC_D=`cd ../src.d && pwd`

cd ${SRC_D}
rm -rf binutils-arm
mkdir -p binutils-arm
cd  binutils-arm
../binutils-2.36/configure --prefix=${IDIR} --exec-prefix=${EDIR_ARM} --target=arm-none-eabi
make all
make install

cd ${SRC_D}
rm -rf gcc.arm.build
mkdir -p gcc.arm.buildls
cd gcc.arm.build
cd contrib
./download_prerequisites
../gcc-11.1.0/configure --disable-shared --eanble-static --prefix=${IDIR} --exec-prefix=${EDIR_ARM} --target=arm-none-eabi 
make all
make install
