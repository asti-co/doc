# Livelox per organizzatori
Questa pagina descrive come creare la propria gara su Livelox e come caricare i dati (cartina, percorsi e risultati).  

!!! Warning "Società ASTI"
    È importante creare la gara specificando `ASTI Ticino` come organizzatore oltre eventualmente alla propria società. Questo ci permette di trovare facilmente le gare ticinesi.

## Impostazioni
Questa documentazione presuppone che il sito sia impostato in italiano. Vedi la pagina [per i concorrenti](concorrenti.md) per le istruzioni del caso.  
Inoltre, per caricare i dati è necessario registrarsi come utente (`Log in` in alto a destra).  
Se non hai un account, ne puoi creare uno gratuitamente:  

1. Accedi a `Crea un account` nel menu in alto a destra.
2. Inserisci i tuoi dati selezionando un nome utente e password.
3. Seleziona il tipo di abbonamento desiderato.  
**Nota**: per creare gare e caricare i risultati basta la versione gratuita (`Livelox Limited`).

## Creazione gara
È possibile creare l'evento in Livelox già qualche giorno prima della gara, senza che la cartina e i percorsi siano visibili ai concorrenti.

1. OCAD 2018 e le versioni successive supportano il caricamento diretto su Livelox. Da OCAD, controllare che le categorie esistano (`Tracciamento percorsi` > `Categorie`), in seguito seleziona `Tracciamento percorsi` > `Carica su Livelox`:
    1. La prima volta che carichi dati su Livelox, devi consentire a OCAD l'accesso al tuo account Livelox. Seguire i passi proposti automaticamente.
    2. Si apre la finestra `Carica su Livelox`, impostare il nome (es. "1. TMO Middle Camignolo"), il nome della carta (es. "Sant'Ambrogio"), infine cliccare su `Verifica` > `Carica`.
    3. Si apre un tab di Livelox nel tuo browser. Seleziona `Crea un nuovo evento` > `Avanti`.
    4. Inserisci le informazioni:
        1. Nome dell'evento (dovrebbe già corrispondere al nome impostato in precedenza)
        1. Orario di partenza: data e ora poco prima della prima partenza.
        1. Orario di fine: data e stima dell'ora di arrivo dell'ultimo concorrente.
        1. Fascia oraria: `Europe/Zurich`.
        1. Nazione: `Svizzera`.
        1. Società organizzatrice: `ASTI Ticino`.
        **Nota**: impostare sempre `ASTI Ticino`, eventualmente anche la propria società.
        **Nota**: clicca su `Seleziona la società organizzatrice della lista` sotto il campo di immissione, poi scrivi ASTI e ti trova la società.
        1. Icona: viene impostata automaticamente quella dell'ASTI.
        1. Classificazione dell'evento: `Competizione`.
        1. Tipo di evento: `Individuale`.
        1. Orario di pubblicazione: è possibile caricare la gara (cartina e percorsi) prima della gara e renderli visibili solo dopo la fine della gara.  
        **Nota**: attenzione: un ritardo nella gara (con spostamento degli orari di oartenza) potrebbe portare alla pubblicazione dei percorsi prima del dovuto. Tienine conto...
        1. Amministratori: `Selezione personalizzata` > aggiungi sempre come amministratore almeno anche `Sebastian Inderst`, che sarà così in grado di aiutare in caso di problemi.
        1. Ricercabilità: sempre selezionato per mostrare la gara nella lista degli eventi.
        1. `Salva` la gara.
2. Disabilita lo scaricamento della cartina: `Mappe` > `modifica` > deseleziona `Permetti di scaricare la mappa` > `Salva`
3. Controllare che tutti i dati sono corretti. È disponibile anche un codice QR che può essere aggiunto sulla cartina stampata e/o essere esposto al centro gara.
   **Nota**: Vengono mostrati i dati della gara suddivise in tante sezioni (info generali, cartina, categorie, amministratori, ecc.). Cliccando su una sezione si possono modificare i relativi dati.
4. Dopo la conclusione della gara, aggiungere i risultati:
    1. Tornare sulla pagina Livelox della gestione dell'evento (`Gestisci` > `Eventi` > Selezionare l'evento desiderato)
    2. `Tempi di partenza e risultati` > `Importa i risultati`
       `Parametri`: Lasciar vuoto
       `Origine dati`: `Indirizzo web`
       `Indirizzo web`: Aggiungere l'indirizzo dei risultati sul sito SOLV, selezionando `alle` > `Zwischenzeiten` ed aggiungendo `&xml=1`, esempio: `https://www.o-l.ch/cgi-bin/results?type=rang&year=2025&rl_id=7665&kind=all&zwizt=1&xml=1`

## Alternativa creazione gara
In alcuni casi particolari (per esempio quando la cartina e i percorsi sono nello stesso file OCAD), il caricamento della gara direttamente da OCAD fallisce. In quel caso sostituire il punto 1. con i seguenti passi:
1. Livelox > `Gestisci` > `Eventi` > `Aggiungi un evento`.
2. Inserisci le informazioni come descritto sopra > `Salva`.
3. Aggiungi cartina: `Mappe` > `Modifica` > `Carica una mappa direttamente su Livelox` > Selezionare il file OCAD della cartina > Seguire i passi proposti
4. Aggiungi percorsi: `Percorsi` > `Modifica` > `Seleziona il file da caricare` > Selezionare il file OCAD dei percorsi > `Salva` > Dovrebbe chiedere `Vuoi creare una categoria sulla base di questi percorsi?` > `Si`
5. Continuare dal passo 2 sopra

Ulteriori istruzioni direttamente sul sito [Livelox](https://www.livelox.com/Documentation/EventOrganisers).
