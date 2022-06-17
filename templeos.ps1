pwd
mkdir templeos
cd templeos
set tosdir $pwd
wget https://templeos.org/Downloads/TempleOS.ISO
set qemupath "C:\Program Files\qemu\"
cd $qemupath
.\qemu-img create -f qcow2 $tosdir/templeosdisk 2G
.\qemu-system-x86_64 -m 512M -drive file=$tosdir/templeosdisk -cdrom $tosdir/templeos.iso -boot order=d

