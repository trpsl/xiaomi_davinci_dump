#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b8a815a9854e8bc22f99e8c1b6731f6a02df063a; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:f1850439738c0509316efccfdd266c4429f0b7c3 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b8a815a9854e8bc22f99e8c1b6731f6a02df063a && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
