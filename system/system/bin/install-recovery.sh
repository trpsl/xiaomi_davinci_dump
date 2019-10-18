#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bab4a94b828bef8c7c17346ebeec95e110664215; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:01cf1d8afd230c337bdb5dc1ae46f6a760a1f77d EMMC:/dev/block/bootdevice/by-name/recovery bab4a94b828bef8c7c17346ebeec95e110664215 67108864 01cf1d8afd230c337bdb5dc1ae46f6a760a1f77d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
