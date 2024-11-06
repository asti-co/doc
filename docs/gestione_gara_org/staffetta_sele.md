# Staffetta Sele

Questa pagina descrive l’utilizzo di OL-Staffel v.12 (OS12) per l’organizzazione della staffetta Sele.  
Prerequisito fondamentale è una buona conoscenza di [OL-Einzel v.12 (OE12)](../../software/oe12) e di Excel, in quanto vengono solo indicati i passi da fare, non necessariamente come farli.  
Non vengono nemmeno trattate le problematiche del tracciare i percorsi in OCAD, con farsta e assegnazione dei pettorali.

## Formato Gara
La Staffetta Sele prevede:  

- Due categorie: `classica` e `open`
- La categoria `classica`:
    - Gara a staffetta con 4 tratte
    - Le tratte hanno percorsi con lunghezze e difficoltà diverse
    - Tutti i concorrenti di una stessa tratta hanno percorsi con lunghezza e difficoltà uguali, tenuto conto dei farsta.
    - Tutte le squadre percorrono complessivamente le stesse sequenze di punti.
    - 1ª tratta: Libera 
    - 2ª tratta: D14, H12, D+60, H+70
    - 3ª tratta: D15-18, H13-15, D+45, H+60 
    - 4ª tratta: Donne, H16-17, H+50 
    - Il tempo finale viene preso con la scatoletta Finish
- La categoria `open`
    - Gara individuale
    - Partenza in massa
    - Gara in linea
    - Aperta a tutti (senza restrizione di età).
  
Anche la categoria `open` viene gestita con l’applicativo OL-Staffel (OS-2010), in quanto a partire dalla versione 12 permette di avere categorie con una singola tratta.  
  
Se scoprite maniere più efficienti per risolvere i problemi ticinesi, o se trovate errori o mancanze nel documento, fatelo sapere (co@asti-ticino.ch). Grazie.

## Preparazione Gara
In OL-Staffel OS12:  
  
1. Crea la gara
    1. Seleziona `Gara > Gara > Nuovo`
    1. Puoi impostare l'ora zero alle `08:00:00` 
    1. Imposta Sistema Chip a `SPORTident`
1. Impostazioni gara
    1. Seleziona `Gara > Gara > Impostazioni`
    1. Clicca su `Sistema Chip`
    1. Imposta la precisione al secondo (`OO:MM:SS`)
    1. Imposta `Usa punzonatura d'arrivo` e `Leggi timbratura dal chip`
    1. Imposta `Meno di 12 ore`
1. Crea le categorie
    1. Seleziona `Iscrizioni > Iscrizioni > Modifica`
    1. Seleziona il tab `Categorie`
    1. Crea categoria con `+ Nuovo`
        1. Imposta ID = `1`, nome corto e lungo = `Classica`, tratte = `4`, Tassa = `0` 
        1. Imposta ID = `2`, nome corto e lungo = `Open`, tratte = `1`, Tassa = `0` 

1. Crea un file d'esempio per l'importazione delle iscrizioni
    1. Seleziona il tab `Società`
    1. Crea una società con `+ Nuovo`
        1. Imposta ID = `1`, Sigla = `GOLD`, Luogo = `Savosa`
    1. Seleziona il tab `Squadre`
        1. Crea una squadra con `+ Nuovo`
            1. Imposta la squadra:  
            Pettorale = `100`, Categoria = `Classica`, Denom. = `Squadra1`, Società = `GOLD Savosa`   
            1. Imposta i concorrenti:  
            Cognome = `Cognome1`, Nome = `Nome1`, Anno = `2001`, Sesso = `U`, Chip = `111111`  
            Cognome = `Cognome2`, Nome = `Nome2`, Anno = `2002`, Sesso = `U`, Chip = `222222`  
            Cognome = `Cognome3`, Nome = `Nome3`, Anno = `2003`, Sesso = `U`, Chip = `333333`  
            Cognome = `Cognome4`, Nome = `Nome4`, Anno = `2004`, Sesso = `U`, Chip = `444444`
        1. Crea una squadra vacante
            1. Crea una squadra con solo un nome, ad es. `Vac`
            1. Salva la squadra
            1. Seleziona la squadra e premi su `Vacante` nella barra menu.
    1. Esporta le iscrizioni
        1. Seleziona `Iscrizioni > Rapporti - Concorrenti > Iscrizioni > Squadre singolarmente`
        1. Nelle impostazioni, seleziona `Includi i concorrenti`
        1. Seleziona `Esporta > Standard`
            - Fromato CSV
            - Separatore come definito nelle impostazioni regionali di Windows (se non lo sai, usa virgola o punto-e-virgola)
            - Nessun delimitatore di testo
            - Formatta i tempi per Excel
1. Apri il file in Excel
    1. Se tutte le righe sono in una sola colonna, usa Data > Text to columns e seleziona il separatore usato nel file (virgola, punto-e-virola, ...).
    1. Inserisci i dati delle squadre e dei concorrenti mantenendo il formato del file.
        1. `Pett`: assicurati di usare gli stessi pettorali assegnati in OCAD
        1. `Denom`.: nomi delle squadre. Nota: anche le categorie Open hanno il nome di squadra.
        1. `NC`: imposta a 0 (zero) per tutte le squadre valide e a 1 (uno) per le squadre che corrono fuori gara (es. maschi in tratte femminili, adulti in tratte giovanili, ecc.).
        1. `Stato class`: imposta a 0 (zero) per tutti
        1. `Numero società`, `Sigla`, `Luogo`: dati della società.  
        **Nota**: puoi lasciare vuoti sia il numero che la sigla e impostare unicamente il luogo. Il numero verrà generato automaticamente.  
        **Nota**: la società inserita nella gara per generare il file di esempio verrà eliminata durante l'importazione delle iscrizioni.  
        **Nota**: la sigla è opzionale, il luogo è obbligatorio.
        1. `Nr cat.`, `Corto`, `Lungo`,`Tratte`: dati della categoria.  
        **Nota**: devono corrispondere ai dati in OS12. `1 Classica Classica 4` o `2 Open Open 1`.
        1. `Tassa d'iscrizione`, `Pagato`, `Xtra1`: impostati a 0 (zero) per tutti.
        1. Inserisci i dati dei concorrenti per ogni tratta.  
        **Nota**: per gli Open, lascia vuote le colonne delle tratte 2, 3 e 4.  
        **Nota**: se una squadra è incompleta, lascia vuoti campi delle tratte in cui manca un concorrente.  
            1. I nomi delle colonne hanno il suffisso della tratta, da 1 a 20.  
            Esempio: Cognome1 è il cognome del concorrente sulla prima tratta, Chip3 è il numero chip del concorrente in terza tratta.  
            Negli esempi sotto viene usata una X per il numero di tratta.
            1. `TrattaX`: sempre impostato a `X` (il numero di tratta, quindi `1`, `2`, `3` o `4`).
            1. `Nr XtraX`: impostato sempre a `X`.
            1. `CognomeX`, `NomeX`: concorrente in tratta `X`.
            1. `An.X`: anno di nascita a 4 cifre.
            1. `SX`:sesso `M` o `F`.
            1. `Stato classificaX`: sempre `0` (zero, non partiti).
            1. `ChipX`: il numero del chip. Puô essere vuoto. 
            1. `NoleggiatoX`: sempre `0` (zero). 
            1. Tutti gli altri campi della tratta sono vuoti.
    1. Aggiungi squadre vacanti in modo da avere dati per ogni pettorale definito in OCAD.
    1. Salva il file come CSV.  
    **Nota**: Excel avverte che perdi la formattazione. Ignoralo, il file deve essere in formato CSV.
    1. Apri il file con un editor di testo per verificare il separatore usato da Excel.
1. Importa il file delle iscrizioni in OS12
    1. Seleziona `Iscrizioni > Importa > Iscrizioni`.
        1. Cancella e ricrea le squadre.
        1. Identifica le squadre dal pettorale
        1. Cancella e ricrea le società
        1. Formato file CSV, separatore (quello usato da Excel).
        1. Seleziona il file salvato in Excel.
    1. Conferma di sapere quel che stai facendo.
    1. Verifica che non ci siano errori.  
    **Nota**: un errore che capita spesso è l'utilizzo multiplo dello stesso chip. In questo caso, cancella il chip a tutti i concorrenti coinvolti in maniera da obbligarli a venire all'info e annunciare il proprio numero di chip.  
    **Nota**: verifica (in `Iscrizioni > Modifica > Iscrizioni`) se i concorrenti vacanti sono riconosciuto come tali. Altrimenti, impostali tramite il tasto `Vacante` nel menu.
1. Importa il file dei percorsi.
    1. Modifica il file in un editor di testo, aggiungendo le parti in rosso.  
    {==  <span style='font-family: "Lucida Console", "Courier New", monospace'>  
    &lt;Course&gt;   
    &nbsp;&nbsp;&nbsp;&nbsp;&lt;Name&gt;Open<span style="color:red">_1</span>&lt;/Name&gt;   
    &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">&lt;CourseFamily&gt;Open&lt;/CourseFamily&gt;</span>  
    </span>  
    ==}  
    1. Seleziona `Percorsi > Importa > Percorsi`.
        1. Cancella e ricrea i percorsi
        1. Identifica i percorsi dalla denominazione.
        1. Cancella e ricrea i punti.
        1. Cancella le ripartizioni dei percorsi.
        1. Formato file XML.
    1. Conferma di sapere quel che stai facendo.
    1. Verifica che non ci siano errori.
    1. Seleziona `Percorsi > Modifica > Percorsi` per vedere i due percorsi.
    1. Seleziona `Percorsi > Modifica > Categoria`
        1. Assegna il percorso `Classica` ad ogni tratta della categoria `Classica`.
        1. Assegna il percorso `Open` alla categoria `Open`.
1. Assegna un percorso ad ogni concorrente.
    1. Seleziona `Percorsi > Importa > Combinazioni`.
        1. Modifica solo squadre esistenti.
        1. Identifica le squadre dal pettorale.
        1. Formato file XML.
    1. Conferma di sapere quel che stai facendo.
    1. Verifica che non ci siano errori.
    1. Seleziona `Percorsi > Modifica > Combinazioni`
        1. Verifica che ad ogni concorrenti sia stato assegnato un percorso.
        1. Verifica che ogni concorrente Open abbia un percorso assegnato. In caso contrario, assegnare  `#1`.
1. Imposta l'orario di partenza.
    1. Seleziona `Liste di partenza > Liste di partenza > Regole`.
        1. Seleziona ogni categoria a destra e nella parte bassa imposta l'orario di partenza.  
        Visto che hai già importato anche i vacanti, non c'è bisogno di generare nuovi posti vacanti, per cui imposta il campo relativo in basso a `0`.
1. Stampa le liste di partenza.
    1. Seleziona `Liste di partenza > Rapporti liste di partenza > Categorie`.
    1. Nelle impostazioni a sinistra, ordina per pettorale, includi i concorrenti e stampa tutte le tratte.
    1. Seleziona `Stampa` e imposta separa pagine.

**Nota**: le liste di partenza non vengono pubblicate, né sul sito SOLV né come PDF sul sito ASTI. Vengono affisse al centro gara, comprendendo già anche le mutazioni giunte fino al giorno prima della gara (per evitare inutili domande all'info o perfino doppioni nelle mutazioni). 
**Nota**: Vale la pena eseguire le mutazioni direttamente in OS12 e non nel file excel, per non rifare tutta la procedura di import delle iscrizioni, correzione degli errori e import delle combinazioni.

## Giorno di gara

### Mutazioni
Di regola ci sono diverse mutazioni da fare il giorno di gara, con spostamenti di concorrenti tra squadre.  
Le cartine stampate corrispondono ai pettorali e ai percorsi importati in OS12, per cui modificare unicamente le squadre e i vacanti presenti. **Non creare nuove squadre**.  
Per ogni concorrente servono pochi dati, per cui non vale la pena usare l'archivio.

### Lettura chip
La gestione della lettura chip non cambia rispetto ad una gara normale.  
Da notare i seguenti punti:

- Non vengono stampati i foglietti degli intertempi per non svelare le combinazioni delle squadre.  
Quindi impostare `Valutaz. rapida` a `Nessuno`.
- Tutti i concorrenti corrono con il pettorale, per cui vale la pena impostare `Chip sconosciuto: Richiedi il pettorale`.
- Se un concorrente ha tanti punti sbagliati:
    - Verifica se ha corso con la cartina corretta.  
    Altrimenti se è colpa sua non sarà classificato. Se l'errore è dell'organizzatore va cambiata la variante del percorso.
    - Verifica se nel programma la variante del percorso corrisponde a quella sulla cartina (in `Percorsi > Modifica > Combinazioni`).  
    Se non corrisponde, modificala e ricontrolla le punzonature (in `Giorno di gara > Chip > Elabora Chip` cerca il concorrente per pettorale e clicca sul bottone `Controllo punzonature` nel menu).

### Orari Partenze
Spesso la partenza non avviene esattamente all'orario predefinito.  
Dopo la partenza, imposta l'orario di partenza effettiva per ogni categoria in `Liste di partenza > Liste di partenza > Regole`.

Imposta l'orario delle partenze in massa delle tratte 2, 3 e 4.  
  
1. Seleziona `Liste di partenza > Liste di partenza > Part. in massa`.
1. Seleziona la categorie `Staffetta`.
1. In basso, immetti l'orario di partenza di ogni tratta.   
Per le tratte non ancora partite in massa, imposta un orario molto tardi ma ancora entro le 12 ore dall'ora zero della gara.
1. Seleziona il tab della categoria `Staffetta` e verifica i concorrenti partiti in massa.  
    - La tabella mostra una riga per ogni concorrente con il suo pettorale e tratta.
    - La colonna `Arrivo` è l'orario di arrivo del concorrente della tratta precedente, quindi di quello che dovrebbe dare il cambio al concorrente della riga.
    - La colonna `Partenza` è l'orario di partenza del concorrente. Normalmente è uguale all'orario `Arrivo`.  
    In caso di partenza in massa, `Partenza` è l'orario della partenza in massa.
    - I concorrenti sono automaticamente considerati come partiti in massa se l'orario di arrivo del concorrente precedente è dopo l'orario di partenza in massa.  
    È possibile forzare la partenza in massa di un concorrente selezionando il flag `Impostato`. Ad esempio il concorrente precedente arriva prima della partenza in massa, ma quando il suo compagno non si trova in zona cambio ma già in zona partenza in massa.

### Classifiche
Il programma delle classifiche sulle TV e online non supporta le gare a staffetta.  

1. Appendi le liste di partenza (per permettere un controllo del pettorale e del numero chip).
1. Stampa (e appendi) regolarmente le classifiche di ogni tratta. 
    1. Seleziona `Classifiche > Classifica provvisoria > Categorie`.
    1. **Non** selezionare `Squadre con partiti in massa alla fine`.
    1. Seleziona tutte le squadre ma senza i non partiti.
    1. Seleziona `dopo tratta` e la tratta.
    1. Non selezionare `2 righe (extra larghe)`.
    1. Vale la pena usare la modalità automatica (imposta `solo categorie modificate`)

Dopo la gara esporta le classifiche.

1. Seleziona `Classifiche > Classfiche ufficiali > Categorie`.
    1. **Non** selezionare `Squadre con partiti in massa alla fine`.
    1. Includi i concorrenti e seleziona il formato esteso.
    1. Seleziona tutte le squadre ma senza i non partiti.
    1. Aggiorna le classifiche (in alto a sinistra).
    1. Seleziona `Pubblica`.
    1. Seleziona `File HTML (WWW)`.
    1. Non selezionare separa pagine.
    1. Seleziona `Colora le righe` e `UTF8`.
    1. Non selezionare `Nome file univoco con orario` né `Carica file nel web`.
    1. Salva col nome `staffettaSele2022_finale.html`.  
    **Nota**: ... adatta l'anno ...
1. Seleziona `Classifiche > Tempi intermedi > Categorie`.
    1. Seleziona tutti i concorrenti ma senza i non partiti.
    1. Seleziona `Separa tratte`.
    1. Aggiorna le classifiche (in alto a sinistra).
    1. Seleziona `Pubblica`.
    1. Seleziona `File HTML (WWW)`.
    1. Non selezionare separa pagine.
    1. Seleziona `Colora le righe` e `UTF8`.
    1. Non selezionare `Nome file univoco con orario` né `Carica file nel web`.
    1. Salva col nome `staffettaSele2022_intermedi.html`.  
    **Nota**: ... adatta l'anno ...
1. Spedisci i due file a [co.classifiche@asti-ticino.ch](mailto://co.classifiche@asti-ticino.ch).



    












    
