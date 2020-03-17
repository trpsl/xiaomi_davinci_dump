#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7e4eced7d1b7690ff5ae8afb534fbe114de0be57; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:7ae6f98d927402d9ef62f33d73f873bb945e78bb \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7e4eced7d1b7690ff5ae8afb534fbe114de0be57 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
