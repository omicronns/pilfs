echo "Building initrd..."

cd init

${CROSS_COMPILE}gcc -static main.c -o root/init
# ${CROSS_COMPILE}objcopy -O binary root/init root/init.bin
