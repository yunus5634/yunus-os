#!/bin/bash
mkdir -p iso/boot/grub
cp boot/kernel/kernel.bin iso/boot/
cp boot/grub/grub.cfg iso/boot/grub/
cp -r src/apps iso/
cp -r src/themes iso/
cp -r src/init iso/
grub-mkrescue -o output/yunux_os.iso iso/
echo "ISO başarıyla oluşturuldu: yunux_os.iso"