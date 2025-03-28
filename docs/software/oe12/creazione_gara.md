# Creazione Gara

Esistono varie opzioni per la creazione della gara in OL-Einzel v.12 (OE12) a dipendenza del portale d'iscrizione o della tipologia di gara.

- Importazione dati dal portale d'iscrizione OL-Events
- Creazione da gara modello
- Creazione completamente manuale

Nelle sezioni seguenti molte istruzioni sono in comune alle tre tipologie. In caso di differenze, queste sono chiaramente marcate e descritte in sezioni separate. Espandi la relativa sezione per accedere alle istruzioni specifiche. 

## Controllo delle cartelle

Controlla le impostazioni delle cartelle dell'applicazione (non dovrebbero cambiare...):  

1. Sulla finestra principale, seleziona `cartelle dell'applicazione` dal menu delle impostazioni in alto a destra.  
![Menu impostazioni](inc/impostazioni_menu_cartelle.png)  
  
1. Imposta le cartelle e la configurazione standard di SportSoftware.  
![Cartelle dell'applicazione](inc/impostazioni_cartelle.png)  
  
1. Conferma premendo `OK`  

## Creazione gara

Segui le istruzioni a dipendenza della procedura scelta (normalmente per :asti-tmo: TMO, :asti-sprintCup: SprintCup e :asti-naz: nazionali seleziona la prima opzione):

??? Example ":asti-tmo: :asti-sprintCup: :asti-naz: Creazione per utilizzo di OL-Events"
    
    1. Seleziona `Gara > Nuovo`  
    ![Gara > Nuovo](inc/gara_menu_nuovo.png)  
    
    1. Seleziona `Gara singola`  
    ![Gara singola](inc/gara_singola.png)  
    
    1. Riempi la scheda della nuova gara  
    ![Crea gara](inc/gara_crea_gara.png)  
      
        1. La denominazione della gara è il testo che appare sulle stampe, ad esempio `1. TMO GOLD Novaggio`  
        
        1. Imposta la cartella di gara nel formato `TMO_AANN_SOCIETA_LUOGO_XX`  
        dove  
        `AA` è l'anno a due cifre  
        `NN`è il numero della gara a due cifre  
        `SOCIETA` è la sigla della società  
        `LUOGO` è il posto della gara  
        `_XX` è un suffisso opzionale per gare speciali (ad es. _CTCO)  
          
                Esempi:  
                TMO_2301_GOLD_Novaggio  
                per il primo TMO del 2023 a Novaggio organizzato dal GOLD  
                  
                TMO_2309_GOV_Cimalmotto_CTCO  
                per i campionati ticinesi, nono TMO del 2023 organizzato dal GOV a Cimalmotto  
          
            Per gare speciali usa `GARA_AA`, es. `StaffettaSele_23` per la gara del 2023.  
          
            L'idea è di avere le gare ordinate cronologicamente almeno per tipo di gara.  
          
        1. Seleziona `Standard` come tipo di gara  
        1. Imposta la data e l'ora zero. 
        Per l'ora zero imposta un orario anticipato di 15-30 minuti rispetto alle prime partenze, per permettere la partenza di alcuni concorrenti (es. collaboratori) prima dell'ora zero ufficiale.  
        1. Seleziona `SPORTident` come sistema chip.  
        `Emit` è un altro sistema non compatibile con i nostri chip e le nostre scatolette.
        1. Imposta testi come "Trofeo Quadri" in `Supplemento 1` e `Supplemento 2` e attiva la checkbox `Mostra la riga con i campi supplementari nei rapporti`.


??? Example "Creazione con gara modello" 
    
    1. Seleziona `Gara > Copia`.  
    Se il comando non è attivo, seleziona prima una gara a caso con `Gara > Seleziona`  
    ![Menu copia gara](inc/gara_menu_copia.png)
      
    1. Riempi i campi come segue  
    ![Copia gara](inc/gara_copia_gara.png)  
      
        1. Scegli `Gara modello per TMO` o `Gara Modello per SprintCup`come gara d'origine.
      
        1. Imposta `Crea nuova gara`  
      
        1. La denominazione della gara è il testo che appare sulle stampe, ad esempio `1. TMO GOLD Novaggio`  
      
        1. Imposta la cartella seguendo le regole descritte sopra per le gare con OL-Events (formato `TMO_AANN_SOCIETA_LUOGO_XX`)  
      
        1. Seleziona `Tutto` nelle opzioni

        1. Premi `Avvia`, `OK` e `Chiudi`  
      
    1. Controlla le impostazioni della gara in `Gara > Impostazioni` seguendo le indicazioni descritte sopra nella sezione per le gare con OL-Events.


??? Example "Creazione completamente manuale"
    Seguire le istruzioni in `Utilizzo di OL-Events`


## Controllo del sistema chip

Per evitare continue richieste di verifica da parte del programma, controlla subito le impostazioni del sistema chip.  

1. Seleziona `Gara > Impostazioni`
1. Clicca sul bottone `Sistema chip`  
![Sistema chip](inc/gara_modifica_impostazioni_gara.png)  
1. Verifica le impostazioni di SPORTident.  
![Impostazioni SPORTident](inc/gara_impostazioni_sportident.png)  
    1. Verifica data e ora
    1. Imposta la precisione del cronometraggio a SECONDI `OO:MM:SS`
    1. Imposta l'uso della scatoletta all'arrivo ma non alla partenza.
    1. Imposta la modalità di lettura del tempo dal chip
    1. Seleziona una durata di gara inferiore alle 12 ore.
    1. Conferma con `OK`
1. Chiudi la finestra con `OK`


## Importazione categorie {#categorie}

Segui le istruzioni a dipendenza della procedura scelta (normalmente per :asti-tmo: TMO, :asti-sprintCup: SprintCup e :asti-naz: nazionali seleziona la prima opzione):

??? Example ":asti-tmo: :asti-sprintCup: :asti-naz: Importazione categorie da OL-Events"
    Le categorie vengono importate da OL-Events.  
    **Nota**: è possibile eseguire questo passo più volte.

    1. Recupera il Bearer Token da OL-Events  
         
        1. Accedi a [ol-events](https://portal.ol-events.ch) come amministratore della gara
          
        1. Nel menu a sinistra, sotto `organizzatore` seleziona `Le mie gare`
          
        1. Seleziona la tua gara
          
        1. Nel menu `Gestione gara` seleziona `Esportazioni`  
        ![OL-Events menu export](inc/olevents_menu_esportazione.png) 
           
        1. Dalla schermata `Scambio di dati` copia il Bearer Token  
        ![OL-Events bearer token](inc/olevents_bearer_token.png)
      
    1. Connetti OE12 alla gara in OL-Events
        1. Nella finestra principale di OE-12, seleziona `OL-Events` nel menu `Web`  
        ![Menu Web](inc/web_menu.png)  
          
        1. Nel menu specifico di OL-Events, seleziona `Impostazioni` 
        ![Menu Web OL-Events](inc/web_menu_olevents_impostazioni.png)
          
        1. Incolla il Bearer Token di OL-Events nel campo `Token` e premi il bottone `Cerca`.   
        Appaiono le impostazioni della gara come definite in OL-Events. Attualmente queste informazioni sono di controllo per assicurarsi di aver collegato OE12 alla gara corretta in OL-Events, ma i dati non vengono ripresi da OE12.  
        ![OL-Events impostazioni](inc/web_olevents_impostazioni.png)
          
    1. Importa le categorie da OL-Events
        
        1. Nel menu `Web > OL-Events` seleziona `Scarica > Categorie`  
        ![OL-Events categorie](inc/web_menu_olevents_categorie.png)  
          
        1. Verifica che la gara sia quella corretta e premi `Scarica`  
        ![OL-Events categorie](inc/web_olevents_categorie.png)
          
        1. Conferma di scaricare le categorie  
        ![OL-Events conferma l'import delle categorie](inc/web_olevents_categorie_conferma.png)  
          
        1. Verifica il numero di categorie e che non ci siano né errori né avvisi.  
        **Nota**: è normale che alcuni campi del file XML vengano ignorati.    
        ![OL-Events verifica import categorie](inc/web_olevents_categorie_verifica.png)  
          
        1. Chiudi la finestra di verifica.
          
    1. Verifica le categorie
        1. Nella finestra principale di OE12, nel menu `Iscrizioni` seleziona `Modifica > Iscrizioni`  
        ![Iscrizioni](inc/iscrizioni_menu_iscrizioni.png)  
          
        1. Seleziona il tab `Categorie` e verifica i dati.  
        **Nota**: In OL-Events il nome lungo delle categorie è in tedesco. Questo non è un problema in quanto in OE12 usiamo unicamente la versione corta.  
        ![Categorie](inc/iscrizioni_categorie.png)


??? Example "Importazione categorie da gara modello" 
    Creando la gara dalla gara modello imposta già in automatico le categorie del tipo di gara selezionato (TMO o SprintCup)

??? Example "Inserimento manuale delle categorie"
    Inserendo le categorie manualmente, assicurati di mantenere i nomi e le ID come definite dal SOLV e le tasse d'iscrizione come definite nel [RECO](https://www.asti-ticino.ch/co/index.php?folder=ctco&main=reco).  
      
    1. Nella finestra principale di OE12, nel menu `Iscrizioni` seleziona `Modifica > Iscrizioni`  
    ![Iscrizioni](inc/iscrizioni_menu_iscrizioni.png)  
      
    1. Seleziona il tab `Categorie`.  
      
    1. Clicca il bottone `+ Nuovo` e inserisci tutte le categorie.  
    ![Categorie](inc/iscrizioni_categorie_nuovo.png)
      
        - I campi `Età` e `Sesso` non vengono usati.  
        - **Nota**: per gare TMO mantieni il numero e la denominazione corta come definite dal SOLV e la tassa d'iscrizione come specificato nel RECO (vedi immagine).  
        ![Lista categorie con ID e prezzi](inc/iscrizioni_categorie_id_prezzi.png)

## Importazione iscrizioni {#import_iscrizioni}

Segui le istruzioni a dipendenza della procedura scelta (normalmente per :asti-tmo: TMO, :asti-sprintCup: SprintCup e :asti-naz: nazionali seleziona la prima opzione):

??? Example ":asti-tmo: :asti-sprintCup: :asti-naz: Importazione delle iscrizioni da OL-Events"
    Le iscrizioni vengono importate direttamente da OL-Events, **senza** esportazione/importazione di file.  
    **Nota**: è possibile eseguire questi passi più volte già prima della chiusura delle iscrizioni.

    1. Si suppone che OE12 sia già connesso alla gara corretta in OL-Events come descritto [sopra](#categorie).  
      
    1. Nel menu `Web > OL-Events` seleziona `Scarica > Iscrizioni`  
    ![OL-Events scarica iscrizioni](inc/web_menu_olevents_iscrizioni.png)  
      
    1. Verifica che la gara collegata sia quella corretta e imposta `Cancella e ricrea` per i concorrenti e per le società.  
    Importa i blocchi di partenza ma non i tempi di partenza.  
    ![OL-Events iscrizioni](inc/web_olevents_iscrizioni.png)  
      
    1. Conferma di scaricare le iscrizioni  
    ![OL-Events conferma l'import delle categorie](inc/web_olevents_iscrizioni_conferma.png)  
      
    1. Verifica che non ci siano messaggi di errore.  
    **Nota**: è normale che alcuni campi del file XML vengano ignorati.  
    ![OL-Events verifica import iscrizioni](inc/web_olevents_iscrizioni_verifica.png)  
      
    1. Verifica le iscrizioni nel tab `Concorrenti` selezionando `Modifica > Iscrizioni` nel menu `Iscrizioni`.  
    ![Iscrizioni](inc/iscrizioni_concorrenti.png)          


??? Example "Importazione con file CSV/XML" 
    OE12 permette sempre ancora di importare le iscrizioni utilizzando dei file CSV o XML.  
    **Nota**: è possibile eseguire questi passi più volte già prima della chiusura delle iscrizioni.
    
    1. I passi per ottenere il file di importazione con tutte le iscrizioni dipende dal portale d'iscrizione utilizzato.  
    Per OL-Events:  
    
        1. Accedi a [ol-events](https://portal.ol-events.ch) come amministratore della gara
          
        1. Nel menu a sinistra, sotto `organizzatore` seleziona `Le mie gare`
          
        1. Seleziona la tua gara
          
        1. Nel menu `Gestione gara` seleziona `Esportazioni`  
        ![OL-Events menu export](inc/olevents_menu_esportazione.png) 
           
        1. Dalla schermata `Scambio di dati` seleziona `OE12` nella sezione `Sportsoftware`  
        ![OL-Events export per OE12](inc/olevents_esportazione.png)
        
    1. Nel menu `Iscrizioni` seleziona `Importa > Iscrizioni`  
    ![OL-Events scarica iscrizioni](inc/iscrizioni_menu_importa.png)  
        
    1. Imposta i valori
        
        1. `Cancella e ricrea` i concorrenti
        1. Identifica i concorrenti tramite l'`ID della banca dati`
        1. Ignora le impostazioni per le iscrizioni tardive
        1. `Cancella e ricrea` le società
        1. Imposta il formato del file esportato dal portale delle iscrizioni.  
        Per OL-Events imposta 
          
            1. `CSV` come formato del file
            1. `Punto e virgola` come separatore 
            1. I doppi apici come delimitatore di testo
        1. Seleziona il file esportato dal portale delle iscrizioni  
        ![Import iscrizioni da file](inc/iscrizioni_import_csv.png)
        
    1. Conferma il caricamento delle iscrizioni  
    ![Conferma il caricamente delle iscrizioni](inc/iscrizioni_import_csv_conferma.png)  
      
    1. Verifica che abbia importato concorrenti e che non ci siano errori.  
    ![Verifica il caricamento delle iscrizioni](inc/iscrizioni_import_csv_verifica.png)  
      
    1. Verifica le iscrizioni nel tab `Concorrenti` selezionando `Modifica > Iscrizioni` nel menu `Iscrizioni`.  
    ![Iscrizioni](inc/iscrizioni_concorrenti.png)          


??? Example "Inserimento manuale dei concorrenti"
    da fare

## Gestione coppie/gruppi

OE12 ha introdotto il concetto di squadre per gestire coppie o gruppi di concorrenti che corrono insieme. OL-Events esporta i dati (sia via API che via file CSV) nel nuovo formato di OE12.  
  
Secondo il [RECO](https://www.asti-ticino.ch/co/index.php?folder=ctco&main=reco) è possibile correre in coppia nelle categorie H/D 10-12-14, H/DB e in OK, ma deve essere ben visibile sulle liste di partenza e sulle classifiche chi ha corso in coppia, in quanto questi concorrenti non ricevono punti per la classifica annuale del TMO.  
  
In OE12 ogni concorrente è presente con una riga dedicata. Un campo supplementare contiene il nome della squadra che "collega" i concorrenti che corrono insieme. I sistemi attuali non soddisfano i criteri definiti dal RECO in quanto sulle liste di partenza e classifiche apparirebbe unicamente il primo concorrente della squadra.  
Per i TMO continuiamo quindi ad usare il formato dei nomi e cognomi uniti da un `+` nello stesso campo.

1. Apri la lista degli iscritti selezionando `Modifica > Iscrizioni` nel menu `Iscrizioni`
1. Nel tab `Concorrenti` ordina la tabella per `Squadra`  
![Squadre in formato OE12](inc/iscrizioni_squadre_separate.png)
1. Identifica il concorrente principale (quello con tutti i dati: numero chip, ID banca dati, ecc.)
1. Aggiungi nome e cognome del/dei compagno/i nei campi `Nome` e `Cognome` del concorrente principale
![Squadre unite ma ancora separate](inc/iscrizioni_squadre_unite_separate.png)
1. Cancella la riga del compagno: seleziona la riga e premi su `- Cancella`
![Cancella squadra](inc/iscrizioni_squadre_cancella.png)
1. Cancella il campo `Squadra` del concorrente principale.
![Cancella nome squadra](inc/iscrizioni_squadra_cancella_nome.png)

## Gestione desideri di partenza {#desideri_partenza}

OL-Einzel prevede un campo `blocco` con cui gestire i desideri di partenza.  
Questo campo viene usato durante il sorteggio delle liste di partenza, facendo partire i concorrenti in ordine ascendente rispetto al valore in questo campo (quindi i concorrenti con valori più bassi partono prima di quelli con valori alti).  
**Nota**: secondo il [RECO](https://www.asti-ticino.ch/co/index.php?folder=ctco&main=reco) non è permesso esprimere desideri di partenza nei campionati ticinesi e nei campionati svizzeri.
  
OL-Events imposta per ogni concorrente un valore secondo i desideri espressi dal concorrente durante l'iscrizione, oppure (per gare nazionali) tenendo conto della provenienza dei concorrenti.  
Vengono utilizzati i seguenti valori: 

- 1 = a disposizione per i collaboratori che partono per primi  
- 2 = desiderio di partenza presto  
- 5 = per le gare :asti-tmo: TMO e :asti-sprintCup: SprintCup, tutti i concorrenti senza desideri di partenza sono nel blocco 5.   
- 3, 5, 7 = per le gare :asti-naz: nazionali, primo, secondo e terzo blocco secondo le regioni SOLV  
- 8 = desiderio di partenza tardi  
- 9 = a disposizione per i collaboratori che partono per ultimi    
  

I collaboratori molto probabilmente non hanno espresso il proprio desiderio sul portale d'iscrizione, per cui in OE12 imposta manualmente il campo blocco soprattutto per i collaboratori che devono partire per primi o per ultimi.

1. Apri la lista degli iscritti selezionando `Modifica > Iscrizioni` nel menu `Iscrizioni`
1. Apri il tab `Concorrenti`
1. Cerca il concorrente
1. Imposta il campo blocco a uno dei valori indicati sopra
1. Salva


## Importazione percorsi {#import_percorsi}

Importare i percorsi in OE12 usando un file XML esportato da OCAD.

1. Esporta i percorsi da OCAD
    1. In OCAD seleziona `Tracciati (XML, IOF Versione 3.0)` dal menu `Tracciamento percorsi > Esporta`  
    ![Menu esporta in OCAD](inc/ocad_menu_export.png)  
  
1. Importa i percorsi in OE12
    1. In OE12 nel menu `Percorsi` seleziona `Importa > Percorsi`  
    ![Menu importa percorsi](inc/percorsi_menu_importa.png)  
      
    1. Imposta i valori
          
        1. `Cancella e ricrea` i percorsi
        1. Identifica i percorsi dalla `denominazione`
        1. `Cancella e ricrea` i punti
        1. Imposta il formato del file a `XML`
        1. Seleziona il file esportato da OCAD  
        ![Import percorsi da file XML](inc/percorsi_importa.png)
        
    1. Conferma la cancellazione degli abbinamenti tra percorsi e categorie  
    ![Cancella gli abbinamenti](inc/percorsi_importa_cancella_abbinamenti.png)  
        
    1. Conferma il caricamento dei percorsi  
    ![Conferma il caricamente delle iscrizioni](inc/percorsi_importa_conferma.png)  
      
    1. Verifica che abbia importato i percorsi e che non ci siano errori.  
    ![Verifica il caricamento dei percorsi](inc/percorsi_importa_verifica.png)  

1. Verifica gli abbinamenti tra percorsi e categorie
    1. Nel menu `Percorsi` selezione `Modifica > Categorie`  
    ![Menu abbinamento percorsi - categorie](inc/percorsi_menu_categorie.png)  

    1. Verifica ed eventualmente imposta il percorso abbinato ad ogni categoria  
    ![Verifica abbinamenti percorsi - categorie](inc/percorsi_abbinamenti_categorie.png)

## Controllo frequenza ai punti

Ora che tutti i concorrenti sono inseriti, e se non è già stato fatto questo lavoro in OCAD, controlla le percorrenze ai punti. Questo rapporto mostra per ogni punto il numero di concorrenti totali e quanti lo hanno come primo punto:

1. Nel menu `Percorsi` seleziona `Riassunto dei concorrent > Punti`  
![Menu percorsi riassunto concorrenti per punto](inc/percorsi_menu_riassunto_punti.png)  


