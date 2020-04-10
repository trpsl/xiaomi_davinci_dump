#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2ab560636388cb490d7c203b4c89d9fff0f8bb32; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:21cdce5a6434dbc09a650976cb6e584d97c1593f \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2ab560636388cb490d7c203b4c89d9fff0f8bb32 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
