echo "Building raspberry pi linux..."

cd linux

if [ "$1" = "clean" ]; then
    make mrproper
fi
make bcm2709_defconfig
make menuconfig
if [ ! "$1" = "config" ]; then
    make zImage modules dtbs -j$(nproc)
fi
