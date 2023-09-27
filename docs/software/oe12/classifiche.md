# Generazione e pubblicazione delle classifiche

![Lavori in corso](../../img/lavori_in_corso.png){width=100px}  
Vedi [PDF della vecchia versione, capitolo 5.9 e 6.1](../../gestione_gara_org/inc/Istruzioni_OL_einzel_per_TMO_v2_4.pdf): 

## Classifiche provvisorie

Le classifiche provvisorie sono classifiche pubblicate durante la gara, quando non tutti i concorrenti sono giunti all'arrivo. Nella testata di ogni categoria vengono indicati il numero di concorrenti arrivati rispetto al numero di concorrenti iscritti (ad es. `(13/18)`).  
Ai TMO, queste classifiche vengono di regola mostrate sulle TV al centro gara e caricate in internet sul sito [O2Rank](https://classifiche.asti-ticino.ch/o2rank). Come alternativa vengono stampate a intervalli regolari e appese al centro gara.
  
1. Nel menu `Classifiche` seleziona `Classifica provvisoria > Categorie`.  
![Classifica provvisoria per categoria](inc/classifiche_menu_provvisoria.png)
1. Seleziona il rapporto `TMO`.  
![Report](inc/classifiche_provvisoria_report.png)
1. Nelle `Impostazioni` a sinistra, nella sezione `Classifica`, seleziona  tutti i concorrenti, ma senza i non partiti.  
![Impostazioni](inc/classifiche_provvisoria_impostazioni.png)
1. Seleziona le categorie da stampare nel pannello di selezione in basso (di regola tutte).
1. Assicurati che i tempi siano mostrati nel formato `OO:MM:SS`.  
Altrimenti, imposta il formato nel menu `ingranaggio` in alto a destra.
1. In caso di modifiche alle impostazioni, aggiorna le classifiche.
![Aggiorna](inc/classifiche_provvisoria_aggiorna.png)

Ci sono varie opzioni sull'utilizzo di queste classifiche.  
  
??? Example "Stampa singola copia"
    1. Seleziona `Stampa` nella barra in alto.  
    ![Menu stampa](inc/classifiche_provvisoria_stampa.png)
    1. Nel dialogo di stampa   
    ![Stampa](inc/classifiche_stampa.png)
        1. Imposta la stampante.
        1. Imposta il formato della carta A4 verticale.
        1. Imposta `separa pagine`.
        1. Imposta i margini (10 sui 4 lati).
        1. Premi `Stampa`.

??? Example "Stampa automaticamente a intervalli regolari"  
    1. Nelle `Impostazioni` a sinistra, nella sezione `Rapporto automatico`  
    ![Stampa automatica](inc/classifiche_provvisoria_automatico_stampa.png)
        1. Imposta l'intervallo di aggiornamento a `20:00` o `30:00` minuti.
        1. Imposta `Stampa` come azione automatica.
        1. Seleziona `Solo categorie modificate`.
        1. Premi su `Avvia`.
    1. Nel dialogo di stampa (appare solo alla prima stampa)   
    ![Stampa](inc/classifiche_stampa.png)
        1. Imposta la stampante.
        1. Imposta il formato della carta A4 verticale.
        1. Imposta `separa pagine`.
        1. Imposta i margini (10 sui 4 lati).
        1. Premi `Stampa`.
    1. **Non chiudere la finestra**.  
    Chiudendo la finestra, la stampa automatica si interrompe e alla prossima apertura bisogna ristampare tutte le categorie.  

??? Example "Pubblica in internet su O2Rank a intervalli regolari"  
    1. Recupera il token FTP della gara da `O2Rank`  
        
        1. Se non hai ancora una gara su `O2Rank`, creala seguendo le istruzioni in [Software > O2Rank > Creazione gara](../o2rank/creazione_gara.md)    
        1. Accedi a `O2Rank` su [classifiche.asti-ticino.ch/o2rank](http://classifiche.asti-ticino.ch/o2rank)
        1. Seleziona `Login` in alto a destra e accedi come amministratore  
        (utente `co@asti-ticino.ch`, password `class1f1che`)
        1. Seleziona `edit` sulla destra della tua gara
        1. Copia il token cliccando su `Copy to clipboard`  
        ![Copia il token](../o2rank/inc/ftpToken.png)

    1. Nella finestra della classifica in OE12, nelle `Impostazioni` a sinistra, nella sezione `Rapporto automatico`  
    ![Stampa automatica](inc/classifiche_provvisoria_automatico_esporta.png)
        1. Imposta l'intervallo di aggiornamento a `1:00` minuto.
        1. Imposta `Esporta` come azione automatica.
        1. **Non selezionare** `Solo categorie modificate`.
        1. Premi su `Avvia`. 

    1. Nel dialogo di esportazione (appare solo la prima volta)  
    ![Esporta nel web](inc/classifiche_provvisoria_esporta_web.png)
        1. Imposta `Colonne con separatori (CSV)`.
        1. Imposta separatore `Punto e virgola`.
        1. Imposta delimitatore testo `Nessuno`.
        1. Seleziona `Formatta i tempi per Excel`.
        1. Esporta il file nella cartella `C:\Temp\tmo\<anno>`).
        1. Imposta il nome del file a `<FTP-Token>.csv`.  
            - Es. `C:\Temp\tmo\2023\XDRIZRPK.csv`
        1. Imposta `Nome file univoco con orario`.
        1. Imposta `Carica file nel web`.
        1. Non impostare `Elabora file con DLL`.
        1. Premi `Ok`.

    1. Nel dialogo `Carica file nel web`    
    ![Carica file nel web](inc/classifiche_provvisoria_carica_web.png)  

        1. Imposta il sito web `asti.cryms.info`
        1. Imposta la cartella `/`
        1. Non attivare la connessione sicura SSL/TLS
        1. Imposta il nome utente `asti`
        1. Imposta la password `class1f2che`
        1. Premi `Carica`.

    1. Attendi uno-due minuti e verifica le classifiche in internet (sito [classifiche.asti-ticino.ch/o2rank](http://classifiche.asti-ticino.ch/o2rank))

## Classifiche finali
Stampa le classifiche finali quando tutti i concorrenti sono arrivati, hai fatto tutte le verifiche necessarie e hai corretto gli stati di non classifica.  
Questa classifica serve quasi unicamente per la premiazione.
  
1. Nel menu `Classifiche`, seleziona `Classifiche Ufficiali > Categorie`.
![Classifica provvisoria per categoria](inc/classifiche_menu_ufficiale.png)
1. Seleziona il rapporto `TMO`.  
![Report](inc/classifiche_ufficiale_report.png)
1. Nelle `Impostazioni` a sinistra, nella sezione `Classifica`, seleziona  tutti i concorrenti, ma senza i non partiti.  
![Impostazioni](inc/classifiche_ufficiale_impostazioni.png)
1. Seleziona le categorie da stampare nel pannello di selezione in basso (di regola tutte).
1. Assicurati che i tempi siano mostrati nel formato `OO:MM:SS`.  
Altrimenti, imposta il formato nel menu `ingranaggio` in alto a destra.
1. In caso di modifiche alle impostazioni, aggiorna le classifiche.
![Aggiorna](inc/classifiche_ufficiale_aggiorna.png)
1. Seleziona `Stampa` nella barra in alto.  
![Menu stampa](inc/classifiche_ufficiale_stampa.png)
1. Nel dialogo di stampa   
![Stampa](inc/classifiche_stampa.png)
    1. Imposta la stampante.
    1. Imposta il formato della carta A4 verticale.
    1. Imposta `separa pagine`.
    1. Imposta i margini (10 sui 4 lati).
    1. Premi `Stampa`.

## Esportazione classifiche
Esporta le classifiche in file CSV da utilizzare per le classifiche TMS, per il sito SOLV (Swiss Orienteering), per il sito ASTi (classifiche annuali), per RouteGadget e per Livelox.  

1. Nel menu `Classifiche`, seleziona `Tempi intermedi > Categorie`.  
![Intermedi per categoria](inc/classifiche_menu_intermedi.png)
1. Nelle `Impostazioni` a sinistra, nella sezione `Classifica`, seleziona  tutti i concorrenti, ma senza i non partiti.  
![Impostazioni](inc/classifiche_intermedi_impostazioni.png)
1. Seleziona le categorie da esportare nel pannello di selezione in basso (di regola tutte).
1. Seleziona `Esporta`.  
![Menu esporta](inc/classifiche_intermedi_menu_esporta.png)
1. Nel dialogo di esportazione  
![Esporta](inc/classifiche_intermedi_esporta.png)
    - Imposta `Colonne con separatori (CSV)`.
    1. Imposta separatore `Punto e virgola`.
    1. Imposta delimitatore testo `Nessuno`.
    1. Seleziona `Formatta i tempi per Excel`.
    1. Imposta il nome e la cartella di destinazione del file.
    1. Imposta il nome del file nel formato `classificaTMO_AANN_SOCIETA_LUOGO_XX` analogamente a quanto fatto per la cartella della gara (in [Creazione gara](creazione_gara.md)), dove  
    `AA` è l'anno a due cifre  
    `NN`è il numero della gara a due cifre  
    `SOCIETA` è la sigla della società  
    `LUOGO` è il posto della gara  
    `_XX` è un suffisso opzionale per gare speciali (ad es. _CTCO)  
        
            Esempi:  
            classificaTMO_2301_GOLD_Novaggio  
            per il primo TMO del 2023 a Novaggio organizzato dal GOLD  
                
            classificaTMO_2309_GOV_Cimalmotto_CTCO  
            per i campionati ticinesi, nono TMO del 2023  
            organizzato dal GOV a Cimalmotto  
        
        Per gare speciali usa `classificaGARA_AA`, es. `classificaStaffettaSele_23` per la gara del 2023.  
        
        Questo file va poi mandato ai responsabili delle classifiche SOLV, TMO, TMS e RouteGadget/Livelox, per cui riconoscere dal nome del file di che gara si tratta è un bell'aiuto.  

    1. Non impostare `Nome file univoco con orario`.
    1. Non impostare `Carica file nel web`.
    1. Non impostare `Elabora file con DLL`.
    1. Premi `Ok`.

## Classifiche TMS
Crea e stampa la classifica per il Trofeo Miglior Società ticinese (TMS).  

1. Lancia il programma TMS (doppio click sull'icona sul desktop del PC server ASTi)
1. Appare la finestra con le istruzioni su come esportare i dati da OL-Einzel.  
Premi `OK`.  
**Nota**: ignora la versione di OL-Einzel...  
![TMS Help](inc/tms_help.png)
1. Nella finestra delle impostazioni, seleziona il file esportato in [Esportazione classifiche](#esportazione-classifiche).
**Nota**: i campi Gara, Luogo e Data sono utilizzati nell'intestazione della classifica.  
![TMS Input](inc/tms_input.png)
1. Appare una finestra con due tab: una con la classifica TMS, l'altra con la classifica di tutte le categorie e i punti assegnati ad ogni concorrente.  
**Nota**: il programma genera due file HTML nella cartella in cui si trova il file CSV. I tre file vanno spediti al responsabile delle classifiche TMS (vedi [Classifiche ASTi](#classifiche-asti)).  
![TMS Corto](inc/tms_corto.png){width=48%} ![TMS Lungo](inc/tms_lungo.png){width=48%}
1. Seleziona il tab `Corto`.
1. Premi `Stampa`.
**Nota**: assicurati di selezionare la stampante A4.


## Pubblicazione SOLV

## Classifiche ASTi




