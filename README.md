# oranges

## 软件

### bochs-2.6.9.tar.gz
sudo apt install bochs

./configure --enable-debugger --enable-disasm
make
sudo make install

## 遇到的问题

### orange's一个操作系统的实现 

- https://blog.csdn.net/t812206236/article/details/94729758?spm=1001.2014.3001.5502
CFLAGS		= -I include/ -I include/sys/ -c -fno-builtin -Wall -m32 -fno-stack-protector
#CFLAGS		= -I include/ -c -fno-builtin -fno-stack-protector -fpack-struct -Wall
LDFLAGS		= -Ttext $(ENTRYPOINT) -Map krnl.map -m elf_i386


- keyboard:  keymap=/usr/share/bochs/keymaps/x11-pc-us.map

- 一个操作系统的实现，mount: /dev/loop0: can't read superblock错误  sudo mount -t msdos -o loop boot.img /mnt/floppy  https://blog.csdn.net/xiaoyi39/article/details/81094747

- 无法创建普通文件"/mnt/floppy/loader.bin": 设备上没有空间  bximage   选择fd 1.44 a.img yes   https://blog.csdn.net/didihe1988/article/details/12862099

 
- usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file or directory sudo apt-get install libc6-dev-i386 https://blog.csdn.net/weixin_42108004/article/details/83446670


- libpthread.so.0:  error adding symbols: DSO missing from command line     -lz -lrt -lm -lpthread   https://blog.csdn.net/fjx1173865548/article/details/44131203
 

