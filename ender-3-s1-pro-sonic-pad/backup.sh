#!/bin/bash

set -e

echo "Copying files"
scp -O root@192.168.68.57:/mnt/UDISK/printer_config3/printer.cfg .
scp -O root@192.168.68.57:/mnt/UDISK/printer_config3/macros.cfg .
scp -O root@192.168.68.57:/mnt/UDISK/printer_config3/moonraker.conf .
scp -O root@192.168.68.57:/mnt/UDISK/printer_config3/cx_printer.cfg .
scp -O root@192.168.68.57:/mnt/UDISK/printer_config3/cx_gmcro.cfg .

echo "Commiting files"
git add -A
git commit -m "$(date +'%Y-%m-%d') - Pre Changes" --allow-empty
git push origin main
