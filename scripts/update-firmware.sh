#!/usr/bin/env bash

version="v1.7.0"

#curl -L -o public/firmware/controller/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/board-bootloader.bin
#curl -L -o public/firmware/controller/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/board-partitions.bin
curl -L -o public/firmware/controller/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/board-firmware.bin

#curl -L -o public/firmware/display/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-bootloader.bin
#curl -L -o public/firmware/display/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-partitions.bin
curl -L -o public/firmware/display/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-firmware.bin
curl -L -o public/firmware/display/esp32-s3/filesystem.bin https://github.com/jniebuhr/gaggimate/releases/download/$version/display-filesystem.bin
