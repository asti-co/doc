# Gare TMO e Nazionali
Questa sezione descrive le attività relative all'IT gestite dall'organizzatore di gare "normali" come TMO o gare Nazionali.  
  

Le descrizioni si basano sul software [OL-Einzel](../software/oe12/index.md) per la gestione delle gare ed è richiesta una certa dimestichezza con il software e il suo uso generale (vedi [Software > OE12 > Interfaccia Grafica](../software/oe12/interfaccia_grafica.md)).  
  
Le azioni sono suddivise in lassi di tempo relative alla data della gara.

- Molti mesi/anni prima della gara:
    - **Aggiunta della propria gara ai vari calendari delle gare.**  
        Il calendario delle gare ticinesi viene pianificato dalla CTCO 1-2 anni prima.  
        Per le nazionali, il calendario è gestito dalla commissione tecnica del SOLV con vari anni di anticipo.
    - **Scelta sull'utilizzo di punti radio.**  
        I punti radio sono dispositivi che trasmettono in tempo reale (o quasi) i dati relativi al passaggio del concorrente ad un punto.  
        Esistono vari tipi di punti radio, con caratteristiche diverse a dipendenza delle esigenze, e possono richiedere la pianificazione di molti mesi, anche oltre un anno.  
        Vedi i dettali nella pagina [Punti radio](../materiale/punti_radio.md).
    - **Tracciamento dei percorsi.**  
        Di regola i percorsi vengono tracciati con [OCAD](../software/ocad/ocad_tracciatore.md).
- Mesi prima della gara:
    - **Pubblicazione dell'annuncio gara con informazioni generali sulla gara.**  
        Spedisci il file PDF a [co@asti-ticino.ch](mailto://co@asti-ticino.ch).
    - **Attivazione della gara su un portale delle iscrizioni.**  
        Esistono varie modalità per la gestione delle iscrizioni alle gare, a dipendenza del tipo di gara.  
        Vedi i dettagli per i tipi di gare e relative ai vari portali a disposizione nella pagina [Portali d'iscrizione](../software/portali_iscrizioni/index.md).
- Settimane prima della gara:
    - **Pubblicazione delle ultime info gara** (le cosiddette `Weisungen`).  
        Spedisci il file PDF a [co@asti-ticino.ch](mailto://co@asti-ticino.ch).
    - **Verifica copertura Natel.**  
        La pubblicazione delle classifiche online in tempo reale richiede la connessione a internet allo scarico chip. Il materiale ASTi contiene un router per la connessione via telefonia mobile.  
        Verifica la copertura di rete nella postazione prevista per la lettura chip. In mancanza di copertura, l'ASTi ha in dotazione anche delle antenne per portare la rete in zone remote. 
        Vedi dettagli in [Ponti radio](../materiale/materiale_asti/ponti_radio.md).
    - **Aggiornamento dell'archivio.**  
        In OL-Einzel sui PC ASTi è installata una versione dell'archivio SOLV usata per le mutazioni il giorno di gara (vedi i dettagli in [Mutazioni](../software/oe12/mutazioni_giorno_gara.md)).  
        L'archivio viene aggiornato periodicamente dal responsabile materiale IT dell'ASTI seguendo i passi descritti in [Archivio](../software/oe12/archivio.md).
- La settimana prima della gara, alla chiusura delle iscrizioni:
    - **Creazione della gara nel software di gestione gare.**  
        Crea la gara in OL-Einzel ([OE12](../software/oe12/index.md)) e importa le iscrizioni e i percorsi.  
        Vedi i passi dettagliati nella pagina [Creazione gara in OE12](../software/oe12/creazione_gara.md).
    - **Creazione della gara sul portale delle classifiche online.**  
        Crea la gara su [O2Rank](http://classifiche.asti-ticino.ch/o2rank/)) per la pubblicazione delle liste di partenza e delle classifiche online.  
        Anche evitando la pubblicazione delle liste di partenza su o2rank prima del giorno di gara, preparando la gara in anticipo toglie stress il giorno di gara.  
        Vedi i passi dettagliati nella pagina [Creazione gara in O2Rank](../software/o2rank/creazione_gara.md).
    - **Creazione e pubblicazione delle liste di partenza.**  
        Crea e pubblica le liste di partenza, tenendo conto di eventuali iscrizioni o mutazioni pervenute tardivamente dopo la chiusura delle iscrizioni.  
        Vedi i passi dettagliati nelle pagine [iscrizioni tardive](../software/oe12/iscrizioni_tardive.md) e [Liste di partenza](../software/oe12/liste_partenza.md).
    - **Stampa delle cartine.**  
        L'ASTi possiede una stampante speciale per la stampa di qualità delle cartine di gara, con i colori calibrati. Per la stampa delle descrizioni punti è sufficiente una normale stampante, ad esempio la stampante A4 dell'ASTi.  
        Per la stampa delle etichette personalizzate dei concorrenti da attaccare alle cartine, vedi i passi dettagliati nella pagina [Varie pre-gara](../software/oe12/varie_pre_gara.md).  
    - **Creazione della gara su Livelox.**  
        È possibile creare l'evento in Livelox già qualche giorno prima della gara, senza che la cartina e i percorsi siano visibili ai concorrenti.  
        Vedi [Livelox per organizzatori](../software/analisi/livelox/organizzatori.md).  

- Il giorno di gara;
    - **Sincronizzazione scatolette SPORTident.**  
        Sincronizza le scatolette poco prima della posa punti per aggiornare l'orologio interno delle scatolette dei punti.  
        La precisione infatti non è altissima e col tempo (tanti giorni tra una gara e l'altra) è probabile che sbaglino anche di vari secondi. Sincronizzando le scatolette assicura una precisione sufficiente per tutta la durata della gara.  
        **Nota**: sincronizza soprattutto i `finish` e l'ultimo punto, ma anche le scatolette `clear`, `check`, `start-check` e i punti di riserva (in modo che siano subito utilizzabili in caso di bisogno).  
        Vedi i passi dettagliati nella pagina [Materiale > SPORTIdent > Sincronizzazione Punti](../materiale/sportident/sincronizzazione_punti.md) 
    - **Montaggio dell'infrastruttura IT.**  
        I PC ASTi 1, 2 e 3 hanno la batteria che non tiene più e funzionano quindi unicamente collegati alla corrente elettrica.  
        Quindi usare il PC4 come server e in primo luogo il nuovo PC5 come stazione di lettura, e usare i PC 1, 2 e 3 come stazioni di lettura supplementari. Notare comunque che in mancanza di corrente, anche la rete tra il PC5 e il server salta, e pure le stampantine non funzionano più.
        Vedi i dettaglia nella pagina [Software > OE12 > Montaggio](../software/oe12/montaggio.md).
    - **Gestione delle TV e delle classifiche online.**  
        Le TV mostrano le classifiche prendendo i dati da internet dal portale [O2Rank](http://classifiche.asti-ticino.ch). Pertanto, è necessario creare una gara su O2Rank e caricare le classifiche provvisorie ogni minuto per aggiornare le classifiche online.  
        Inoltre, le TV devono avere accesso al WiFi ASTi e avere connessione internet per recuperare i dati.    
        Vedi i passi dettagliati nella pagina [Software > O2Rank > Creazione gara](../software/o2rank/creazione_gara.md).
    - **Gestione delle mutazioni e delle iscrizioni sul posto.**  
        Gestisci le iscrizioni sul posto e le mutazioni in OL-Einzel tenendo conto delle cartine a disposizione in partenza.  
        Vedi i passi dettagliati nella pagina [Software > OE12 > Mutazioni](../software/oe12/mutazioni_giorno_gara.md).
    - **Lettura chip.**  
        La lettura chip e la gestione delle varie casistiche di errore sia a livello dei singoli concorrenti che a livello di categoria o di gara sono descritte in [Software > OE12](../software/oe12/index.md).  
        Vedi i passi dettagliati della lettura nella pagina [Software > OE12 > Lettura Chip](../software/oe12/lettura_chip.md).
    - **Creazione delle classifiche per la premiazione.**  
        Per la premiazione, stampa le classifiche di categoria e genera la classifica TMS.
        Vedi i passi dettagliati nella pagina [Software > OE12 > Classifiche](../software/oe12/classifiche.md). 
- Dopo la gara:
    - **Pubblicazione delle classifiche della gara sul sito SOLV.**  
        Pubblica le classifiche con i tempi intermedi sul sito SOLV.  
        Vedi i passi dettagliati nella pagina [Software > OE12 > Classifiche](../software/oe12/classifiche.md). 
    - **Pubblicazione dei percorsi su Livelox.**  
        Per la pubblicazione dei risultati su Livelox, segui le istruzioni su [Livelox per organizzatori](../software/analisi/livelox/organizzatori.md).  
    - **Aggiornamento delle classifiche del TMO e del TMS e dell'archivio gare.**  
        Per l'aggiornamento delle classifiche annuali del TMO e TMS sul sito ASTi, come pure dell'archivio delle gare, spedisci a [co.classifiche@asti-ticino.ch](mailto://co.classifiche@asti-ticino.ch):

        - La cartina OCAD
        - I percorsi OCAD
        - Il file CSV delle classifiche (quello caricato sul sito SOLV)
        - I file generati dal programma TMS  

        Vedi i passi dettagliati nella pagina [Software > OE12 > Classifiche](../software/oe12/classifiche.md#classifiche-asti).  
        
    - **Gestione finanziaria.**  
        In OL-Einzel, genera le fatture da spedire alle società.  
        Vedi i passi dettagliati nella pagina [Software > OE12 > Gestione Finanziaria](../software/oe12/finanze.md). 
