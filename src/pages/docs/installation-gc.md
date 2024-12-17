---
layout: ../../layouts/Layout.astro
title: Gaggia Classic
description: Installation procedure for Gaggia Classic machines
section: Installation
order: 12
---

<div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
<h3 class="my-2">Important Notes</h3>

<strong class="font-bold text-red-700">High Voltage Safety</strong>: Exercise extreme caution when working with high voltage. If you are unsure about any steps, consult a professional technician.  
<strong class="font-bold text-red-700">Follow Local Codes</strong>: Ensure that your work adheres to local electrical codes and standards.  
<strong class="font-bold text-red-700">Documentation</strong>: Keep a record of your wiring setup for future reference and troubleshooting.

</div>

<div class="bg-blue-50 mt-4 border border-blue-500 text-blue-800 px-4 py-3 rounded">
<h3 class="my-2">Tools and Materials Needed</h3>

**Tools**

* Phillips head screwdriver
* Wire crimpers (for female and male spade connectors, ferrules and JST connections)
* Wire strippers or knife
* Multimeter (for testing connections)

**Materials**

* K-type thermocouple
* Solid State Relay (SSR)
* Assembled control board
* Assembled display
* 18 AWG wires for 230/110V connections
* 22 AWG wires for power to the display and buttons
* 2* JST XH 2P connector
* 1* JST XH 4P connector (if doing buttons)
* PA2.0 4P connector 
* Spade connectors (male, female and piggyback)
* Ferrules
* Heat shrink tubing (optional, for added insulation)
* Electrical tape or zipties for organizing
* Labeling tape or markers for wire labeling

</div>

### Preparation

**Safety First!**
Unplug your machine to ensure there's no live connections while working on it.
Work in a dry environment to prevent electrical hazards.

Start by gathering all the materials and tools listed above so you have everything ready for the next steps. Follow these guides if you haven't already: [Printed Parts Assembly](/docs/sourcing-printed-parts) and [Flashing](/docs/flashing).

Make yourself familiar with the wiring diagrams for your machine in [Wiring](/docs/wiring).


#### Disassemble the Machine
Remove the top panel of the Gaggia Classic to access the internal wiring and components.
Document the existing wiring configurations with photos or diagrams for reference.

### HV Wiring

#### Label All Wires
Use labeling tape or a marker on the plugs to mark each wire according to its function.

| Part         | Letter | Pins                                          |
|--------------|--------|-----------------------------------------------|
| Power Switch | PS     | I - IN, O - OUT                               |
| Brew Switch  | B      | I - IN, O - OUT                               |
| Mode Switch   | M      | I - IN, B - Brew, S - Steam                   |
| Heater       | H      | I - IN, B - BRIDGE, O - OUT                   |
| Pump         | P      | L - LINE, N - NEUTRAL                         |
| Valve        | V      | L - LINE, N - NEUTRAL, E - EARTH (if present) |

#### Replace Brew thermostat

Unscrew the brew thermostat (around the middle of the boiler).
Screw in the K-Type thermocouple into the M4 threads. Make sure not to overtighten this, it only needs to be hand-tight.

Prepare a small jumper wire with 2 spade connectors at the end and connect it in place of the brew thermostat.

#### Install SSR

Unscrew the steam thermostat from the boiler and unplug the connections. Run those wires to the SSR or make extensions with ferrules at the end.
They need to be connected to the HV side of the SSR.
Screw the SSR against the back vents of your machine for added cooling.

#### Pump connections

Remove the existing Line connection from the pump. Make a new 18 AWG wire that connects from the pumps Line connection to the P port of the PCB.

#### 3WV connection

Use the Line wire that usually runs from the pump to the 3WV and connect it to the V port of the PCB.

#### Switch wiring

Remove the HV wiring from the Brew and Steam switch. The switches can be used to control the display and will be wired up with LV wires in the next step.

Make 2 wires for L and N with piggyback connectors on one and ferrules on the other end. Run these from the power switches L and N connections to the respective inputs on the PCB.

### LV Wiring

#### Connect thermocouple

Connect the thermocouples wires to the thermocouple port of the PCB. Orientation matters for this connection! The wires come precrimped with ferrules so you don't have to do anything to the wires.

#### Make the screen power connection

The standard use case is to connect the screen to power from the PCB. Make a cable that consists of 2 wires with a JST XH 2P connector on one and a JST PA 4P connector on the other side. Check the pinout on the back of the screen if you're unsure which pins to use.
You can route this wire in front of the grouphead, through a gap at the corner of the cup warmer or through the buttons if you plan to remove them.
Connect it to screen and PCB.

#### Connect buttons (optional)

Make a 22 AWG cable with 3 wires that has a JST 4P on one end and female spade connectors on the other. It should consist of one GND, Steam Button and Brew Button connection.
Make another short 22 AWG jumper wire with 2 female spade connectors on the ends.
Connect the jumper wire from the Brew position of the Brew/Steam mode switch to the Brew switch input.
Connect the GND connection to the input of the Brew/Steam mode switch.
Connect the Brew connection to the output of the Brew switch.
Connect the Steam connection to the Steam position of the mode switch.

#### SSR logic

Make 22 AWG cable with 2 wires with a JST XH 2P connector on one and ferrules on the other end. Connect it to the SSR output of the PCB and the inputs of the SSRs. Be sure to connect it the correct way (+/-).

### Double-Check All Connections
Review all your labeled connections for accuracy and completeness.
Ensure that there are no exposed wires and that all connections are secure and insulated.

Once you have completed that step, test your wiring for possible shorts with a multimeter and make sure you haven't connected any LV connections with HV connections. Also test the switches operation for continuity in the different switch positions.

### Testing
Now is the big moment. Turn on your machine for the first time. The heater should not be heating on power-on and nothing else should be running. You can check if the heater is doing anything by observing the LED on the SSR.
The screen should turn on and show the Standby screen of GaggiMate. Touch the screen once to switch to warmup mode, you should see the current room temperature being displayed and the LED on the SSR will light up indicating it's heating up.

### Final Steps
Reassemble the Machine: Carefully put the panels back on, ensuring that there are no pinched wires.  
Conduct a Safety Check: Perform a final inspection to ensure everything is insulated and that there are no exposed wiring connections.  

If you have any further questions or need additional clarifications, feel free to go into the Discord and make a help thread or post on our Subreddit.
