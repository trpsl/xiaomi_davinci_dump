#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bb26017dfc0f6e09421377dbcde55e008a0279c8; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:9f19e8d23b4e0096fc7b2c0168208c8ad0fc61d7 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bb26017dfc0f6e09421377dbcde55e008a0279c8 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
