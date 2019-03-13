QEMU_CMD=qemu-system-x86_64

$QEMU_CMD --version
$QEMU_CMD \
    -kernel /boot/vmlinuz-$(uname -r | egrep -o '^.{4}')-x86_64 \
    -machine pc -m 1024 \
    -nographic -append "console=ttyS0"
