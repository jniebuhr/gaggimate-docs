---
layout: ../../layouts/Layout.astro
title: Flashing
description: What to do with your components before you first turn them on.
section: Installation
order: 10
---

The flashing process of your new components is simply done on this website. You need to use either Chrome or Firefox for it to work. Simply plug in your devices to USB and press the correct button below.

<esp-web-install-button manifest="/manifests/display-manifest.json">
    <button slot="activate" class="bg-gray-50 border border-[#b0b3b8] border-opacity-40 hover:bg-gray-200 text-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 rounded-full px-5 py-3 mr-2 gap-3 items-center text-center">Flash Display</button>
</esp-web-install-button>
<esp-web-install-button manifest="/manifests/controller-manifest.json">
    <button slot="activate" class="bg-gray-50 border border-[#b0b3b8] border-opacity-40 hover:bg-gray-200 text-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 rounded-full px-5 py-3 mr-2 gap-3 items-center text-center">Flash Controller</button>
</esp-web-install-button>

<span class="font-medium">Disclaimer:</span> The Web-based flash tool and OTA update are currently built only for the suggested components. (ESP32-S3 N8R8 and LilyGo Display).
This software will also run on other configurations, but you will have to adjust the platformio build and flash those via USB.