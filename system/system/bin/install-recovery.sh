#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:94c03409fa582eac5ebbabe426d6661d3ce77972; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:e50b51477597e2de08aa04268e145b36d007573e EMMC:/dev/block/bootdevice/by-name/recovery 94c03409fa582eac5ebbabe426d6661d3ce77972 67108864 e50b51477597e2de08aa04268e145b36d007573e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
