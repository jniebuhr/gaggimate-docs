---
layout: ../../layouts/Layout.astro
title: First Start
description: "GaggiMate First Start Guide: How to configure WiFi."
section: Usage
order: 17
---

So you flashed and installed your GaggiMate kit. Here's what to do next!

### WiFi Setup

When you first boot your GaggiMate setup it will start up and show only a Bluetooth icon on the standby screen.
This indicates you either haven't configured any WiFi credentials yet (since it's the first boot) or that the WiFi connection failed.
It will launch a WiFi AP in that case so you can change configuration. On versions 1.8.1 and older you can scan the QR Code below to connect or simply connect to the WiFi network 'GaggiMate' which has no password.

<div class="flex justify-center w-full">

![Join GaggiMate](../../assets/images/wifi_qrcode.png)

</div>

On 1.9.0 and newer you need to use the QR code on the display instead. Go to the menu, select the i info icon in the middle of the screen and the QR code will be shown.

You can then visit the configuration page of GaggiMate. Since mDNS doesn't work in AP mode you have to visit [http://4.4.4.1/](http://192.168.4.1/).
Click on Settings, configure your WiFi and you're ready to go. Once it rebooted and connected to your own WiFi you can always access the settings on [http://gaggimate.local](http://gaggimate.local).

Alternatively you can directly configure the WiFi network for Gaggimate to connect to using the tool at [https://ota.gaggimate.eu/](https://ota.gaggimate.eu/) with the display USB connected to a PC. Go to the Connect option for GaggiMate Display, select your serial device when requested then look for the option Change WiFi. If the Change WiFi option does not appear make sure the display has started up before trying to connect and that you're using a reliable USB data cable (not charging only).
