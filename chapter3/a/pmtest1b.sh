#!/bin/bash
# freedos官网下载地址 https://www.freedos.org/download/  bochs官网freedos下载 https://bochs.sourceforge.io/diskimages.html
# 要先在freedos中执行   format b:
nasm pmtest1b.asm -o pmtest1b.com
sudo mount -o loop a.img /mnt/floppy/
sudo cp pmtest1b.com /mnt/floppy/
sudo umount /mnt/floppy