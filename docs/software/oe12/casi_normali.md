# Gestione di varie casistiche normali

![Lavori in corso](../../img/lavori_in_corso.png){width=100px}  
Vedi [PDF della vecchia versione, capitolo 5.3, 5.5, 5.6, 5.7, 5.8](../../gestione_gara_org/inc/Istruzioni_OL_einzel_per_TMO_v2_4.pdf)  
  

## Non partiti

Puoi inserire i non partiti manualmente o tramite la lettura della scatoletta check della
partenza.  

### Procedura manuale

da fare...

### Procedura tramite lettura check

Inserisci i non partiti leggendo i timbri dalla scatoletta Check della partenza (possibilmente
quella utilizzata per il controllo delle partenze al minuto -1).  
  
**Nota**: le schermate seguenti sono fatte con una gara con soli tre iscritti con nomi eloquenti...
  
| Cognome | Nome        |
| ------- | ----------- |
| Test1   | Arrivato    |
| Test2   | In giro     |
| Test3   | Non partito |

1. Chiudi tutte le finestre connesse alla scatoletta di lettura, per esempio `Leggi Chip`
1. Nel menu `Giorno di gara` seleziona `Chip > Elabora stazione SI`  
![Menu elabora stazione SI](inc/giorno_menu_elabora_stazioni_si.png)  
  
1. Seleziona `Leggi`  
![Leggi stazioni SI](inc/giorno_elabora_stazione_si_inizio.png)  
  
1. Verifica la connessione alla scatoletta di lettura (pallino verde in basso a destra).  
       
    ???+ Bug "ATTENZIONE A NON ELIMINARE TUTTE LE PUNZONATURE"  
        La finestra che appare ha almeno tre problemi:  
          
        1. Non è possibile chiudere la finestra.  
        La `crocetta` in alto a destra per chiudere la finestra `NON` funziona se prima non viene eseguita un'azione.  
        Per chiudere la finestra, premere su `Verifica ora`, eventualmente accettare il messaggio di errore e poi chiudere la finestra normalmente.  
          
        1. Il bottone `Cancella` non chiude la finestra, quindi non si comporta come un bottone `Cancel`/`Annulla`, ma `CANCELLA TUTTE LE PUNZONATURE` sulla scatoletta.  
        Questo bottone va rinominato `Elimina` per non fare confusione. 
          
        1. Il bottone `Cancella` `NON` chiede la conferma da parte dell'utente, ma cancella tutto immediatamente, senza una verifica e senza possibilità di ripensamento.  
      
  
    ![Verifica connessione alla scatoletta di lettura](inc/giorno_elabora_stazione_si_connetti.png)  
  
    - Imposta la modalità `Master`
    - Seleziona la porta `COM... SPORTident...`
  
1. Posiziona la scatoletta dello start check sulla scatoletta di lettura usando il magnete.
1. Seleziona `Scarica`  
![Scarica punzonature](inc/giorno_elabora_stazione_si_scarica.png)  
  
    - Verifica nella barra in basso che il numero di punzonature scaricate corrisponda circa al numero di iscritti
      
1. Verifica che vi siano tanti concorrenti nella schermata di elaborazione SI e che i tempi siano nell'intervallo previsto  
![Verifica tempi start check](inc/giorno_elabora_stazione_si_scaricati.png)  
  
    - Evita di usare questa procedura se vi sono tempi sballati. La scatoletta Start Check potrebbe contenere dati di una gara precedente (se non è stata fatta la sincronizzazione con la stazione SI-Master in modalità estesa) 
  
1. Chiudi la finestra di `Elabora Stazioni SI`  
  
1. Nel menu `Giorno di gara` seleziona `Funzioni speciali > Non partiti`  
![Menu non partiti](inc/giorno_menu_non_partiti.png)  
  
1. Nelle opzioni a sinistra, assicurati che sia seleziona `Timbri check` e premi `Avvia`  
![Avvia non partiti](inc/giorno_non_partiti_inizio.png)  
  
1. Conferma anche se non vedi ancora chi sono i concorrenti marcati non partiti  
![Conferma non partiti](inc/giorno_non_partiti_conferma.png)  
  
1. Verifica la lista sia attendibile  
![Verifica non partiti](inc/giorno_non_partiti_verifica.png)  
  
    - In caso contrario usa la funzione `Ripristina` per annullare la modifica dello stato di gara dei concorrenti non partiti.

## Concorrenti mancanti

Per sapere quanti (e quali) concorrenti mancano all'arrivo  

1. Nel menu `Giorno di gara` seleziona `Rapporti > Concorrenti mancanti`  
![Menu mancanti](inc/giorno_menu_mancanti.png)  
  
1. Per evitare confusione, nascondi la sezione con tutti i concorrenti (in basso a sinistra).  
Verifica il sommario per categoria e la lista dei nomi.  
![Concorrenti mancanti](inc/giorno_mancanti.png)  
  
    - **Nota**: se mantieni la finestra aperta, premi il bottone `Aggiorna` in alto a sinistra