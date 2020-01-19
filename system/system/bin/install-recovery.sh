#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:654168c7a478e596b85dca16c19edaadaa19add7; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:4614064fb1f7de5fbe4cbaa2354b86d4968af0e9 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:654168c7a478e596b85dca16c19edaadaa19add7 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
