### Instructions
First, you will need:
- qemu (on linux : sudo apt-get install qemu

Then run:
```
$ nasm -f bin hello.asm -o hello.bin
$ qemu-system-i386 hello.bin
```
