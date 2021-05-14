cd ${TOP_DIR}/src.d
rm -rf  bintils-arm
mkdir   binutils-arm
cd binutils-arm
../binutils-2.36.1/configure --target=arm-none-abi --prefix=/home/duane/efortran/install --exec-prefix=/home/duane/efortran/install/arm-eabi-none
make
make install
