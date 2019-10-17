#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d517369dca2afa415665cac4140ed99cf6269c69; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:ecfc24bf2944511172a8e2f07bb611acdbd1415d EMMC:/dev/block/bootdevice/by-name/recovery d517369dca2afa415665cac4140ed99cf6269c69 67108864 ecfc24bf2944511172a8e2f07bb611acdbd1415d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
