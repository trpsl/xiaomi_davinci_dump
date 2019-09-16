#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b5ef5d1e9e901ee7d0aac3a47770584ee23a701c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:b9230d0c73a43aaad91d82c7cd2b7b88b52c4fa1 EMMC:/dev/block/bootdevice/by-name/recovery b5ef5d1e9e901ee7d0aac3a47770584ee23a701c 67108864 b9230d0c73a43aaad91d82c7cd2b7b88b52c4fa1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
