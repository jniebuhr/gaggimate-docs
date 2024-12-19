#!/usr/bin/env bash

curl -sL -o public/firmware/controller/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/controller-bootloader.bin
curl -sL -o public/firmware/controller/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/controller-partitions.bin
curl -sL -o public/firmware/controller/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/controller-firmware.bin

curl -sL -o public/firmware/display/esp32-s3/bootloader.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/display-bootloader.bin
curl -sL -o public/firmware/display/esp32-s3/partitions.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/display-partitions.bin
curl -sL -o public/firmware/display/esp32-s3/firmware.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/display-firmware.bin
curl -sL -o public/firmware/display/esp32-s3/filesystem.bin https://github.com/jniebuhr/gaggimate/releases/download/v1.0.0/display-filesystem.bin
