#!/usr/bin/env bash

version="v1.2.1"

curl -sL -o public/firmware/controller/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/controller-bootloader.bin
curl -sL -o public/firmware/controller/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/controller-partitions.bin
curl -sL -o public/firmware/controller/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/controller-firmware.bin

curl -sL -o public/firmware/display/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-bootloader.bin
curl -sL -o public/firmware/display/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-partitions.bin
curl -sL -o public/firmware/display/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-firmware.bin
curl -sL -o public/firmware/display/esp32-s3/filesystem.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-filesystem.bin
