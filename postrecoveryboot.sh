#!/sbin/sh

# Resets boot msg
dd if=/dev/zero of=/dev/block/platform/omap/omap_hsmmc.1/by-name/misc bs=1 count=31;

