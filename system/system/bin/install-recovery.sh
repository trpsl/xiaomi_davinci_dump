#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f873e0bba1c4b1e805b13d839d278a9ad639bccd; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:0f5964d2dd1f47bc8b00c091ae8e963cd871b7a0 EMMC:/dev/block/bootdevice/by-name/recovery f873e0bba1c4b1e805b13d839d278a9ad639bccd 67108864 0f5964d2dd1f47bc8b00c091ae8e963cd871b7a0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
