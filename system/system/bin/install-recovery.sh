#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:fa83eddaad7967b9444c978bc8b5e1a35d10995a; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:1a9bfcada2af578d8dfa38e5be2bf278a38b2ab3 EMMC:/dev/block/bootdevice/by-name/recovery fa83eddaad7967b9444c978bc8b5e1a35d10995a 67108864 1a9bfcada2af578d8dfa38e5be2bf278a38b2ab3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
