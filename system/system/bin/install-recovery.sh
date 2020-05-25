#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7a0648fd1d45af5a38015342abc339e4e5ae29ad; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:b3a78fa73e71d49d342fd8c6f34f5ae3664457ab \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7a0648fd1d45af5a38015342abc339e4e5ae29ad && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
