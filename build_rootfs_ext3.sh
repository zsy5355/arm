#5 生成镜像
dd if=/dev/zero of=rootfs.ext3 bs=1M count=512

#6 格式化生成ext3文件系统
mkfs.ext3 rootfs.ext3

#7先挂在刚才的镜像然后将文件拷贝到镜像中
sudo mkdir tmpfs
sudo mount -t ext3 rootfs.ext3 tmpfs/ -o loop
sudo cp -r rootfs/*  tmpfs/
sudo umount tmpfs

