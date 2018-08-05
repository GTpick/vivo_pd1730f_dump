#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:44496110:9a97c1d346250aa69c4a434594442772fd218831; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29701354:220af88682387b7c147863799f2696ca7fd6001f EMMC:/dev/block/bootdevice/by-name/recovery 9a97c1d346250aa69c4a434594442772fd218831 44496110 220af88682387b7c147863799f2696ca7fd6001f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
