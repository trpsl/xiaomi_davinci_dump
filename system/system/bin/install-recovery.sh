#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2ed8754a27372ff7de2e4a85575cc421f2c15b68; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:09cbc21c6627acfa9c419804ef0f1f785b5a443b EMMC:/dev/block/bootdevice/by-name/recovery 2ed8754a27372ff7de2e4a85575cc421f2c15b68 67108864 09cbc21c6627acfa9c419804ef0f1f785b5a443b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
