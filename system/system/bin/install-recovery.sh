#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e658a9f3efaae71fee7b249211d7ba2ad4eded2d; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:053b38b46220ab5ad933292a7c3c8d92a0b21ae8 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e658a9f3efaae71fee7b249211d7ba2ad4eded2d && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
