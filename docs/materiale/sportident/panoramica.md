# SPORTident - Panoramica

## Funzionamento generale

Di regola, a parte rare eccezioni, nella corsa d'orientamento i concorrenti devono trovare tutti i punti del proprio percorso nel minor tempo possibile e **nell'ordine prestabilito**.  
  
[SPORTIdent](https://sportident.com) è il produttore dei punti elettronici e dei relativi chip che vengono utilizzati in Svizzera sia per il cronometraggio che per il controllo della sequenza dei punti trovata da ogni concorrente.  
  
Ad ogni punto contrassegnato sulla cartina con un cerchio rosso è posato sul terreno un paletto con una lanterna di stoffa bianco/rossa (o bianco/arancione) e sul paletto è fissata un'unità (`scatoletta`) SPORTident.  
Ogni concorrente è provvisto di un chip (anche detto `SI-Card`, `badge`, in Italia `bricchetto`) con il quale "timbra" il passaggio ai punti, memorizzando sul chip il numero del punto e l'orario.  
Vi sono due modi per "timbrare" un punto, a dipendenza del tipo di chip utilizzato e all'impostazione delle scatolette dei punti.  
  
- **Timbro a contatto**  
    Ogni scatoletta SPORTident ai punti è munita di un buco in cui si puù infilare il chip. Il processo di timbratura dura pochi millisecondi (a dipendenza del chip utilizzato) e termina con un segnale ottico e acustico emessi dalla scatoletta stessa.  
    **Nota**: Questa modalità funziona con qualsiasi tipo di chip e qualsiasi tipo di impostazione delle scatolette dei punti.  

- **Timbro a distanza**  
    Se le scatolette ai punti sono impostate in modalità `SI-Air`, è possibile timbrare a distanza utilizzando chip `SIAC` (SPORTident Active Cards). Invece di inserire il chip nel buco dell'unità, basta avvicinare il chip alla scatoletta ad una distanza di 40-50 cm. A registrazione avvenuta, sarà la punta della SIAC a lampeggiare e il chip emetterà anche un segnale sonoro (a volume invero non altissimo). La scatoletta del punto invece non emetterà nessun segnale, né acustico né luminoso.  
    **Nota**: anche con scatolette in modalità `SI-Air` è possibile timbrare in modalità `a contatto`, sia con chip tradizionali che con le `SIAC`. In questo caso sarà la scatoletta a segnalare l'avvenuta registrazione. 

Dopo la gara, ogni concorrente è tenuto a far leggere i dati del proprio chip presso una stazione di lettura predisposta dagli organizzatori. Questo permette la verifica della corretta sequenza dei punti trovati nonché di regola anche della registrazione del tempo di gara.  
  
SPORTident supporta il cronometraggio tramite la possibilità di timbrare delle scatolette `START` e `FINISH` per registrare l'orario di partenza rispettivamente di arrivo. Alle gare del TMO, alle nazionali e ai campionati svizzeri l'orario di partenza è predefinito nella lista di partenza mentre viene utilizzata la scatoletta `FINISH` per determinare l'orario di arrivo. In questo tipo di gara è quindi importante timbrare anche la lanterna sulla linea d'arrivo.

## Utilizzo in gara

Di seguito le azioni relative ai chip di SPORTident richieste da ogni concorrente prima, durante e dopo una gara.  

- Se sei in possesso di una SIAC, verifica lo stato della batteria online sul relativo sito di [SPORTident](https://www.sportident.com/support/siac-battery-service).
- All'iscrizione, controlla che il numero del chip nel portale d'iscrizione corrisponda al tuo chip.  
In caso contrario, aggiorna i tuoi dati nella [banca dati SOLV](../../software/solvDB/index.md).
- Prima della gara, verifica il numero del chip sulle liste di partenza. Se non corrisponde, informa l'organizzatore (questa mutazione è gratuita).
- Alla prepartenza
    - Timbra la scatoletta `CLEAR` (solo `timbro a contatto`, può durare anche diversi secondi).  
    Questo cancella tutti i dati della gara precedente registrati sul chip.
    - Timbra la scatoletta `CHECK` (solo `timbro a contatto`, immediato se il chip è pulito, altrimenti, la scatoletta non suona e non lampeggia).  
    Questo controlla che sia stata effettivamente eseguita la cancellazione completa.  
    **Nota**: viene anche attivata la modalità `SI-Air` sui chip `SIAC`, abilitando così la possibilità di timbrare a distanza. Una piccola lucina lampeggia sul chip per mostrare che è attivo e che sta quindi consumando la batteria.
- Prima della partenza, entrando nell'ultimo cancello al minuto -1, timbra la scatoletta `START CHECK` (`timbro a contatto`).  
Questa scatoletta è una normale scatoletta `CHECK` tenuta da un collaboratore dell'organizzazione, che si assicura che tutti i concorrenti eseguano lo `START CHECK`. Questo permette un controllo automatizzato dei concorrenti partiti.  
Inoltre, garantisce che tutti i concorrenti abbiano correttamente eseguito il `CLEAR` (lo `START CHECK` non reagisce se il chip non è pulito) e il `CHECK`, attivando la modalità SI-Air sulle SIAC.
- Per gare con scatoletta START, dopo la partenza timbra la scatoletta START (solo `timbro a contatto`).  
**Assicurarsi che la scatoletta emetta il feedback sonoro e acustico**.
**Note**:  
    - Il tempo di gara inizia nel momento in cui si timbra la scatoletta START.  
    In caso di "traffico" aspetta tranquillamente il tuo turno.
    - Di base le gare del TMO, le nazionali e i campionati svizzeri non usano la scatoletta START.  
    Soprattutto gare con iscrizione sul posto possono invece usare questa modalità. 
- Durante la gara, timbra i punti a contatto o a distanza, a dipendenza del tipo di chip utilizzato.  
    - Se usi un chip SIAC, **assicurati che il tuo chip emetta il feedback sonoro e acustico**.  
    **Note**:
        - In modalità a distanza possono timbrare diversi concorrenti in contemporanea, anche durante la timbratura a contatto di un altro concorrente. 
        - Potenzialmente ci possono quindi essere varie sorgenti di feedback acustici e bisogna verificare che il proprio chip abbia emesso la sua conferma di avvenuta registrazione.
        - Se il tuo chip non reagisce timbrando a distanza, utilizza la modalità `a contatto`.  
        Questo potrebbe essere dovuto alla batteria del chip scarica, al chip pieno, o alla scatoletta del punto non impostata in modalità SI-Air.
    - Se usi un chip tradizionale, **assicurati che la scatoletta emetta il feedback sonoro e acustico**.
    **Nota**:
        - Se la scatoletta non reagisce, prova ad estrarre il chip, aspetta un paio di secondi e riprova.
        - Se la scatoletta non reagisce ancora, timbra con la pinza sulla cartina.
- All'arrivo, timbra la scatoletta `FINISH` sulla linea d'arrivo.  
Questo registra il tempo della gara sul chip e spegne la modalità SI-Air delle SIAC.
- Al termine della gara recati immediatamente alla postazione di lettura chip (di solito si trova subito dopo l'arrivo oppure al centro gara).  
La lettura chip scarica tutti i dati registrati sul chip, permettendo il controllo della sequenza dei punti fatti. Inoltre, viene di regola stampato e consegnato al concorrente un biglietto con gli intertempi ai vari punti.  
**Note**:
    - Se hai timbrato un punto sulla cartina, mostra il timbro (formato da una serie di buchini) allo scarico chip.
    - Recati allo scarico chip anche se non hai terminato la gara. In questo modo informi l'organizzatore del tuo rientro, permettendo un controllo dei concorrenti mancanti e evitando inutili (e potenzialmente costose) spedizioni di ricerca.
    - Se ti ritiri senza passare dall'arrivo e sei in possesso di una SIAC, informa l'organizzatore allo scarico chip in modo da poter spegnere la SIAC, evitando un consumo inutile di batteria (la SIAC si spegne automaticamente, ma solo dopo diverse ore).
    - Se hai usato una SIAC e il foglietto degli intertempi mostra molti punti duplicati svariate volte, cambia la batteria della SIAC.

Per sostituire la batteria della SIAC, spedisci il chip al [supporto svizzero](https://www.sportident.com/support/siac-battery-service#country=CH).

Trovi ultreriori informazioni sull'utilizzo dei chip nella pagina delle [domande frequenti sui chip](FAQ%20SI%20Air.md).

## Materiale SPORTident dell'ASTI

L'ASTI ha in dotazione parecchio materiale SPORTident a disposizione delle società.  
  
- XXX scatolette dei punti, numeri 31 - 110, con XXXx 100
- XXX scatolette `CLEAR`
- XXX scatolette `CHECK` di cui XXX marcate come `Start Check`
- XXX scatolette `START`
- XXX scatolette `FINISH`
- 1 scatoletta `TIME MASTER`
- 1 scatoletta `BATTERY TEST`
- 1 scatoletta `SIAC OFF`
- XXX scatolette di lettura
- XXX chip viola di servizio `OFF`
- 1 barra magnetica e 1 magnete nella scatoletta di un rullino di film
- XXX chip da noleggiare (solo chip tradizionali, niente SIAC)

## Altro materiale SPORTident

Esiste ulteriore materiale SPORTident non a disposizione.  
Per eventi speciali è possibile noleggiare ulteriore materiale direttamente da SPORTident o da altre società.  

- Scatolette per punti per gare MTB-O/Ski-O  
Sono scatolette unicamente per timbrare a distanza, senza il buco per timbrare a contatto.  
Permettono di timbrare da una distanza maggiore, fino a 180 cm.
- Gate per partenza e arrivo  
Gli orari di partenza e di arrivo vengono registrati al passaggio sulla linea di partenza rispettivamente d'arrivo, senza bisogno di timbrare una scatoletta. Anche questo materiale utilizza la modalità SI-Air e quindi richiede l'uso di chip del tipo `SIAC`.
- Punti radio
Per trasmettere in tempo reale le punzonature con i tempi intermedi dei concorrenti al passaggio da un punto nel bosco.  
Vedi i dettagli in [Punti radio](punti_radio.md).
- Stampantine
Utili per piccoli eventi come allenamenti per stampare i foglietti con gli intertempi direttamente nel bosco.

