#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:fc449d7e518589a882717bd9c5cf2a143bb43c3d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:af99cc303cbe3916626ae2a75e64b32e98514382 EMMC:/dev/block/bootdevice/by-name/recovery fc449d7e518589a882717bd9c5cf2a143bb43c3d 67108864 af99cc303cbe3916626ae2a75e64b32e98514382:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
