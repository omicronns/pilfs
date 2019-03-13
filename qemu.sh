QEMU_CMD=qemu-system-arm

$QEMU_CMD --version
$QEMU_CMD \
    -kernel linux/arch/arm/boot/zImage \
    -initrd init/root/init.bin \
    -dtb linux/arch/arm/boot/dts/bcm2709-rpi-2-b.dtb \
    -machine raspi2 -m 256 \
    -serial stdio -append "console=ttyAMA0"
