
set -x
set -e
IDIR=`cd .. ;pwd`/install
EDIR_ARM=${IDIR}/arm-none-abi

SRC_D=`cd ../src.d && pwd`

cd ${SRC_D}
rm -rf binutils-arm
mkdir -p binutils-arm
cd  binutils-arm
../binutils-2.36/configure --prefix=${IDIR} --exec-prefix=${EDIR_ARM} --target=arm-none-eabi --disable-shared --enable-static

cd ${SRC_D}/gcc-11.1.0

bash contrib/download_prerequisites

cd ${SRC_D}
mkdir -p gcc.arm.build
cd gcc.arm.build
../gcc-11.1.0/configure --enable-bootstrap --disable-shared --enable-static --prefix=${IDIR} --exec-prefix=${EDIR_ARM} --target=arm-none-eabi 
