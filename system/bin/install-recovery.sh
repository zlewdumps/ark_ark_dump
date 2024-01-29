#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16366892:f8e97fd88ab5f9f609d1334ae232d08853a74fd2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15717672:6c3a498bd155791def672d5a485f5f0df3b57c53 EMMC:/dev/block/bootdevice/by-name/recovery f8e97fd88ab5f9f609d1334ae232d08853a74fd2 16366892 6c3a498bd155791def672d5a485f5f0df3b57c53:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
