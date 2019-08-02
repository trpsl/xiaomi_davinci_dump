#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2665a184bd636e83a197d1452da7a73a68ee7316; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:dc7ca011b1fd1e873f91a3ebd8ae1917f69480eb EMMC:/dev/block/bootdevice/by-name/recovery 2665a184bd636e83a197d1452da7a73a68ee7316 67108864 dc7ca011b1fd1e873f91a3ebd8ae1917f69480eb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
