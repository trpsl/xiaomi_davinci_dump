#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:22ee7c1efcdc886422411c85df057cc9cfab6414; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:200a353400c67a94221440a353c12f9317b97bf5 EMMC:/dev/block/bootdevice/by-name/recovery 22ee7c1efcdc886422411c85df057cc9cfab6414 67108864 200a353400c67a94221440a353c12f9317b97bf5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
