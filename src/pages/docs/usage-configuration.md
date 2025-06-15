---
layout: ../../layouts/Layout.astro
title: Configuration
description: Walkthrough of what you should probably configure on your GaggiMate
section: Usage
order: 16
---

## PID Setup

To control the heater of your machine, GaggiMate uses a [PID controller](https://en.wikipedia.org/wiki/Proportional–integral–derivative_controller).
This controller needs the correct configuration parameters to work with your machine. All these parameters can be configured on the Settings page. We have tested this on a couple of machines and provided the following starting values for you:

| Machine                    | PID values | Temperature offset | Notes |
|----------------------------| ---------- | ------------------ | ----- |
| Gaggia Classic             | 58.397,1.027,249.055 | 8 | |
| Gaggia Classic Pro/Evo/E24 | 58.397,1.027,249.055 | 8 | |
| Rancilio Silvia | 112.315,0.658,1436.887 | 5 | It is recommended to use the Boiler refill plugin to make sure there's water in the boiler |

The temperature offset is used to raise the boiler wall temperature by that amount to account for thermal loss of the water leaving the grouphead.

## Plugins

### Homekit

This plugin activates Apple Homekit integration. Simply activate it, restart GaggiMate and connect it with the code displayed in the settings.

### Boiler refill plugin

This plugin will fill the boiler on startup and on leaving the steam mode for x amount of seconds. This is especially recommended for machines that have the heating element in the water like a Rancilio Silvia.

### Smart Grind Plugin

This plugin allows you to use a Tasmota smart plug to turn on / off a grinder and make it controllable from the GaggiMate display. This also works in conjunection with Bluetooth scales to enable Grind by Weight. Simply plug the grinder into a Tasmota smart plug, enter the IP of that plug in the field and choose whether GaggiMate should turn on the grinder at the start of the grind and then turn it off at the end, toggle it off and on at the end or just turn it off.

### Home Assistant (MQTT)

This plugin allows sending data about the current state of GaggiMate to MQTT Topics, you can configure the connection to the server and the necessary topics will be created on the MQTT host.
