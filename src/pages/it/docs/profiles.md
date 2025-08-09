---
layout: ../../../layouts/Layout.astro
title: Profili
description: Creare profili di erogazione nell'interfaccia web
section: Uso
order: 18
---

## Introduzione

Una delle funzioni principali di GaggiMate è la possibilità di creare profili personalizzati per l’erogazione dell’espresso.
I profili possono essere creati e modificati nell’interfaccia web alla [pagina Profili](http://gaggimate.local/profiles).
Gli utenti possono inoltre esportare i profili esistenti come file JSON, condividerli online (per esempio nel [canale profiles](https://discord.com/channels/951416527721230336/1380352847387820082) del nostro server Discord) e importare i profili di altri sul proprio GaggiMate.
Una volta creato o importato un profilo, lo si può rendere disponibile sulla macchina contrassegnandolo come preferito nell’interfaccia web.

Un profilo è composto da una o più *fasi*; passaggi che GaggiMate eseguirà fino al raggiungimento di un obiettivo volumetrico, entro una durata massima.
Una volta raggiunto il peso target o superata la durata massima, GaggiMate passerà alla fase successiva o, se non ve ne sono, terminerà l’erogazione.
In alternativa, se si desidera interrompere l’erogazione in anticipo, la si può fermare manualmente, tramite i controlli sullo schermo o, se collegato, con il pulsante fisico di erogazione.

Gli obiettivi volumetrici funzionano al meglio quando si utilizza una bilancia Bluetooth.
In caso contrario, GaggiMate stimerà la quantità di caffè in tazza in base alla curva di pressione dell’erogazione fino a quel momento.
In alternativa, l’obiettivo volumetrico può essere impostato a zero grammi: in tal caso è trattato come infinito e la fase prosegue fino al tempo massimo impostato.

Durante una fase, la pompa della macchina può essere accesa o spenta e la valvola a tre vie può essere aperta o chiusa.
Gli utenti di GaggiMate Pro possono anche configurare la pompa per lavorare a una pressione specifica, calibrata tramite il trasduttore di pressione.
Per le ricette di erogazione, la valvola a tre vie rimane in genere chiusa, ma aprirla può essere utile in alcuni casi, ad esempio per un profilo di backflush.

Attualmente un profilo ha un’unica temperatura target valida per tutte le fasi. La possibilità di impostare target decrescenti arriverà con i profili avanzati.

## Creare un profilo semplice

Creiamo ora un profilo semplice tramite l’interfaccia web e vediamo come appare il relativo file JSON.
Se preferisci, puoi anche scrivere manualmente i profili in JSON e poi importarli in GaggiMate.

### Usando l’interfaccia web
In fondo alla pagina "Profili" dell’interfaccia web, fai clic su "Aggiungi nuovo", quindi seleziona "Profilo semplice".
I profili avanzati con gradienti e transizioni di temperatura arriveranno presto.
Vedrai il seguente profilo vuoto:

![Blank profile screen](../../../assets/images/blank_profile.png)

Questo creerà un profilo che effettua un riempimento di tre secondi, poi una pre‑infusione di 5 secondi e quindi eroga fino a raggiungere 36 grammi in tazza.
La temperatura target è 93 °C.
Ogni fase può avere un nome descrittivo, che verrà mostrato sul display della macchina durante l’erogazione.

Salva il profilo.
Tornando ora alla pagina con tutti i profili, il nuovo profilo comparirà nell’elenco.
Tuttavia, non è ancora disponibile sulla macchina.
Per renderlo disponibile, fai clic sull’icona a stella sinistra nella scheda del profilo.
Ora sei pronto per preparare un caffè.

### Il formato JSON

Esportando il profilo appena creato e osservando il contenuto del file JSON, la struttura dei profili risulterà evidente:

```json
{
  "label": "New Profile",
  "type": "standard",
  "description": "",
  "temperature": 93,
  "phases": [
    {
      "name": "Pump",
      "phase": "preinfusion",
      "valve": 1,
      "duration": 3,
      "pump": 100
    },
    {
      "name": "Bloom",
      "phase": "preinfusion",
      "valve": 1,
      "duration": 5,
      "pump": 0
    },
    {
      "name": "Pump",
      "phase": "brew",
      "valve": 1,
      "duration": 20,
      "pump": 100,
      "targets": [
        {
          "type": "volumetric",
          "value": 36
        }
      ]
    }
  ]
}
```

## Condivisione dei profili

I profili possono essere importati ed esportati dalla pagina panoramica. La funzione di import si trova in alto a destra nella pagina e ogni scheda profilo ha un’icona di export sul lato destro.
I profili forniti in questa pagina o sul nostro server Discord nel canale #profiles sono file .json che possono essere caricati su GaggiMate tramite l’interfaccia web.

## Raccomandazioni di profilo

### Cremina Lever di Johnyez

**Consigli**:

Tostatura: da medio‑scuro a molto scuro  
Macinatura: 4 su DF64  
Texture: Molta crema, tradizionale  
Tempo: 40‑60 s  
Rapporto: 1:1.5 - 1:2.2  
Temperatura: 78‑90 (aumenta/diminuisci di 1‑2 ºC alla volta fino al gusto preferito, varia in base alla tostatura)  

<a href="/downloads/profiles/cremina-lever.json" download>Download</a>

### Medium 18g 1:2 di alexr1525

Questo profilo è relativamente semplice: inizia con pre‑infusione e bloom, poi usa una fase a 9 bar con un calo verso la fine.

<a href="/downloads/profiles/medium-18g.json" download>Download</a>

### Profilo di backflush

Questo profilo può essere usato per fare il backflush della macchina con Cafiza.

Aggiungi il detergente al filtro cieco come indicato nelle istruzioni del prodotto ed esegui il profilo. Al termine, pulisci il filtro cieco e la doccetta, quindi esegui di nuovo il profilo per rimuovere eventuali residui di detergente dalla macchina.

<a href="/downloads/profiles/backflush.json" download>Download</a>
