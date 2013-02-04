#!/system/bin/sh

PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin
ORIG_NVS_BIN=/system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin
NVS_BIN=/system/etc/firmware/ti-connectivity/wl1271-nvs.bin

if bbx [ ! -f "$NVS_BIN" ]; then
    bbx mount -o remount,rw /system
    bbx cp ${ORIG_NVS_BIN} ${NVS_BIN}
    calibrator set nvs_mac $NVS_BIN $(/system/bin/idme print| bbx grep "mac: " | bbx cut -c6-17| bbx sed -e 's/)//g'| bbx sed -e 's/-//g'| bbx sed 's/../&:/g;s/:$//')
    bbx mount -o remount,ro /system
fi

