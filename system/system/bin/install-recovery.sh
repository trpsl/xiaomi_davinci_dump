#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3b61b5f5dd85228f9cb2ec04cad97d51cbae2244; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:1bd9868e2d848b94623b88fd0ca97d9f0a9f9e72 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3b61b5f5dd85228f9cb2ec04cad97d51cbae2244 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
