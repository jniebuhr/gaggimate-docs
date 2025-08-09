---
layout: ../../../layouts/Layout.astro
title: Configurazione
description: Panoramica di ciò che probabilmente vorrai configurare su GaggiMate
section: Uso
order: 16
---

## Impostazione PID

Per controllare la resistenza della macchina, GaggiMate usa un [controllore PID](https://en.wikipedia.org/wiki/Proportional–integral–derivative_controller).
Questo controllore necessita dei parametri corretti per funzionare con la tua macchina. Tutti questi parametri possono essere configurati nella pagina Settings. Abbiamo testato alcune macchine e ti forniamo i seguenti valori di partenza:

| Macchina                   | Valori PID | Offset temperatura | Note |
|----------------------------| ---------- | ------------------ | ----- |
| Gaggia Classic             | 58.397,1.027,249.055 | 8 | |
| Gaggia Classic Pro/Evo/E24 | 58.397,1.027,249.055 | 8 | |
| Rancilio Silvia | 112.315,0.658,1436.887 | 5 | Si consiglia il plugin Boiler refill per assicurarsi che ci sia acqua nella caldaia |

L’offset di temperatura viene usato per aumentare la temperatura della parete caldaia di quel valore per compensare la perdita termica dell’acqua in uscita dal gruppo.

## Plugin

### Homekit

Questo plugin attiva l’integrazione con Apple Homekit. Attivalo, riavvia GaggiMate e collegalo usando il codice mostrato nelle impostazioni.

### Boiler refill plugin

Questo plugin riempie la caldaia all’avvio e all’uscita dalla modalità vapore per un certo numero di secondi. È particolarmente consigliato per macchine con resistenza immersa come la Rancilio Silvia.

### Smart Grind Plugin

Questo plugin ti permette di usare una presa smart Tasmota per accendere/spegnere un macinacaffè e controllarlo dal display di GaggiMate. Funziona anche in combinazione con bilance Bluetooth per abilitare la Macinatura a peso. Collega semplicemente il macinino a una presa Tasmota, inserisci l’IP della presa nel campo dedicato e scegli se GaggiMate deve accendere il macinino all’inizio e spegnerlo alla fine, fare un toggle al termine o solo spegnerlo.

### Home Assistant (MQTT)

Questo plugin consente di inviare i dati sullo stato corrente di GaggiMate a dei topic MQTT; puoi configurare la connessione al server e i topic necessari verranno creati sull’host MQTT.
