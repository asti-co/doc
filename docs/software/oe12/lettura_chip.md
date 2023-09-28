# Lettura Chip

![Lavori in corso](../../img/lavori_in_corso.png){width=100px}  
Vedi [PDF della vecchia versione, capitolo 5.4](../../gestione_gara_org/inc/Istruzioni_OL_einzel_per_TMO_v2_4.pdf): 

!!! Warning "Nuovo formato intertempi"
    Impostare il formato esteso e selezionare il modello `TMO Esteso` per i foglietti degli intertempi con la classifica attuale e il distacco dai migliori in ogni tratta.  
    ![Fomrato esteso](inc/giorno_lettura_chip_formato_esteso.png)  
        
    Foglietto con formato esteso  
    ![Foglietto](inc/giorno_lettura_chip_foglietto_formato_esteso.png)  


## Impostazioni
Imposta le opzioni per la lettura chip.  

1. Nel menu `Giorno di gara`, seleziona `Chip > Leggi chip`.  
![Leggi chip](inc/giorno_menu_leggi_chip.png)
1. Nel dialogo per la selezione della stampante, controlla
    1. Nome stampante: deve essere la stampantina dei tempi intermedi con il numero corrispondente alla stampantina assegnata al PC.
    1. Formato carta: per le stampantine, la larghezza è 72mm (la lunghezza è 286mm anche se si tratta di rotoli “infiniti”).
    1. Impostazioni etichette: `TMO Esteso` (questo campo non è modificabile)
    1. Righe e colonne: `1` e `1`  
    1. Margini: `10` in basso, `0` gli altri.  
    **Nota**: se all'apertura della finestra non appare il dialogo della stampante, imposta `Automatico` nelle opzioni di valutazione rapida sulla sinistra.
1. Verifica o correggi le impostazioni sulla sinistra.  
![Impostazioni](inc/giorno_lettura_chip_impostazioni.png)
    1. Imposta valutazione rapida a `Automatico` per attivare la stampa automatica dei tempi intermedi ad ogni lettura chip.
    1. Imposta `Non stampare i posti di riserva`.  
    **Nota**: i posti di riserva sono per i chip sconosciuti, non assegnati ad un concorrente. Stampando il biglietto sembrerebbe tutto a posto, non sapendo poi però a chi appartenevano quei tempi. 
    1. Non impostare `Stampa solo punti sbagliati`. Stampiamo i foglietti anche per chi ha trovato tutti i punti...
    1. Imposta `Formato esteso`. Questo formato stampa sul foglietto la classifica dei primi 5 concorrenti della categoria (al momento della lettura...) come pure il distacco dal miglior tempo di ogni tratta.  
    Senza il `Formato esteso`, i foglietti conterranno unicamente i tempi intermedi di tratta e di gara.
    1. Non impostare `Lettura silenziosa`.
    1. Imposta `Chip sconosciuto: Richiedi il pettorale` se alla lettura del chip i concorrenti hanno un pettorale oppure se hanno la cartina con l'etichetta personalizzata e il numero di pettorale. In caso di chip sconosciuto appare una finestra in cui inserire il pettorale e assegnare immediatamente il chip al concorrente.  
    Se invece i concorrenti non hanno il pettorale o non si presentano necessariamente con la cartina, è più semplice non impostare questo campo e gestire i chip sconosciuti tramite le riserve.
1. Imposta il formato del foglietto a `TMO Esteso` o `TMO` a dipendenza dell'impostazione del formato esteso nelle impostazioni.  
![Formato](inc/giorno_lettura_chip_formato.png)
1. Verifica che la stazione di lettura sia pronta (luce verde in basso a destra).  
![Stato scatoletta](inc/giorno_lettura_chip_stato_scatoletta.png)  
Se invece è rossa
    1. Assicurati che la stazione di lettura sia collegata al PC e riconosciuta dal programma.
    **Nota**: nel menu `Sistema chip` in basso appare il nome della scatoletta o una selezione di scatolette (in caso se ne attacchino più di una al PC).  
    ![Seleziona scatoletta](inc/giorno_lettura_chip_menu_selezione_scatoletta.png)
    1. Prova a inizializzare la stazione di lettura premendo sul bottone rosso in basso a destra (sperando che diventi verde). 
    1. Prova a visualizzare le impostazioni nel menu `Sistema Chip > Inizializza`.  
    **Nota**: normalmente basta aprire e richiudere il dialogo, senza bisogno di modificare i valori.   
    ![Inizializza scatoletta](inc/giorno_lettura_chip_menu_inizializza_scatoletta.png)  

