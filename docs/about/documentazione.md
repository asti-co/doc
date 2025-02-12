# Documentazione

Come gestire e modificare la documentazione.

## Markdown in generale

Il testo nei file `.md` viene trasformato in file `.html` usando alcune semplici regole di conversione della sintassi `markdown` in `html`. È sempre possibile aggiungere testo direttamente in html, ma questo andrebbe evitato se possibile, in quanto la sintassi markdown, pur se meno flessibile, è molto più semplice.

La presente pagina descrive alcuni elementi `markdown` utilizzati nelle pagine di questa documentazione.

### Titoli

I titoli iniziano con uno o più caratteri *cancelletto* `#`, e il numero di cancelletti indica il livello del titolo.  
La tabella di navigazione a destra viene automaticamente generata, ma vengono mostrati solo i titoli a partire dal livello due. Infatti, per convenzione, ogni pagina ha un solo titolo a livello uno, in cima alla pagina, e con il testo del relativo link nel menu a sinistra.

Titoli possono indicare un ID per facilitare la creazione di link che portano direttamente al capitolo in questione. Aggiungere `{#id}` dopo il titolo, usando un testo corto e chiaro come `id`.

??? Example "Esempio Markdown"
    ```
    ## Markdwon in generale {#markdown}
    
    Il testo nel file `.md` viene ....
    
    ### Titoli
    
    I titoli iniziano ...


    NOTARE che il primo titolo indica un ID=markdown che semplifica la creazione di link a questo capitolo.
    
    ```

### Struttura Del Testo

Questo testo è scritto 
su più righe
ma mostrato tutto su 
una riga sola.  
Mentre questo  
va a capo  
perché ha due spazi alla fine  
di ogni riga.

Dopo una riga vuota inizia un nuovo paragrafo. 




Due o più righe vuote sono considerate come una singola riga vuota.

---

   Tre caratteri `meno` vengono rappresentati come una riga di separazione, più o meno visibile a dipendenza del browser utilizzato.
   Ma attenzione: ci deve essere una riga vuota prima dei tre trattini, altrimenti il testo precedente diventa un titolo (incluso anche nella tabella a destra)



??? Example "Esempio Markdown"
    ```
    Questo testo è scritto 
    su più righe
    ma mostrato tutto su 
    una riga sola.  
    Mentre questo  
    va a capo  
    perché ha due spazi alla fine  
    di ogni riga.

    Dopo una riga vuota inizia un nuovo paragrafo. 




    Due o più righe vuote sono considerate come una singola riga vuota.

    ---

    Tre caratteri "meno" creano una linea di separazione larga come tutta la pagina.

    ```

### Stile Del Testo

*corsivo*, **grassetto**, ***corsivo grassetto*** si ottengono mettendo uno, due o tre asterischi `*` o caratteri underscore `_` prima e dopo il testo.  
Parole incluse tra accenti gravi \` sono mostrati con un font a larghezza fissa, utile ad esmpio per `parole chiave`.  

Altri elementi di markdown come   

- {--testo cancellato--} scritto come {\--testo cancellato\--}  
- {++testo aggiunto++} scritto come {\++testo aggiunto++}  
- {==messo in evidenza==} scritto come {\==messo in evidenza==}  
- o {>>testo commentato<<} scritto come {\>>testo commentato<<}  

non sono visibili nella pagina di anteprima.

{==

Intere sezioni vengono messe in evidenza includendole tra {\== e ==\}.
Anche queste non sono visualizzate correttamente nell'anteprima.

==}

??? Example "Esempio Markdown"
    ```
    Parola in  
        *corsivo*, 
        **grassetto**, 
        ***corsivo grassetto***, 
        `parole chiave`

    Gli altri stili non funzionano in queste tipologie di esempi... ma sono visibili nel file sorgente della pagina. 
    ```

### Liste Puntate

Liste puntate:

- Ogni elemento inizia con il carattere meno `-`
* Oppure inizia con il carattere `*`
- Consiglio: utilizzare lo stesso carattere per tutti gli elementi di una lista...
- Importante: ci vuole una riga vuota prima del primo elemento
    - Mentre per i sotto punti
    - Bastano quattro spazi prima del meno
        - O otto spazi
            - O dodici...

**Nota**: per l'anteprima di VSCode bastano due/quattro/sei spazi per i sotto-punti, ma per la versione finale gli spazi devono essere a incrementi di quattro.

??? Example "Esempio Markdown"
    ```
    Liste puntate:

    - Primo elemento
    - Secondo elemento
        - Sottopunto (indentato di 4 spazi)  
            - Sotto sottopunto (indentato di 8 spazi)
    ```

### Liste Numerate

Liste numerate:

1. Iniziano con il numero e il punto, ad esempio `1.`
1. Tutti gli elementi possono avere il numero 1. e vengono automaticamente numerati in ordine crescente
1. Importante: ci vuole una riga vuota prima del primo elemento
1. Liste possono avere sottoliste
    1. Gli elementi figlio sono indentati di quattro spazi 
    1. Sottopunti possono avere tutti i numeri messi a `1.`
    1. La numerazione effettiva dipende dal livello di indentazione
        1. Sotto-sotto punti sono indentati di otto spazi
        1. Sono numerati in maniera diversa
            1. Sotto punto indentato di dodici spazi
            1. Anche questo ha dodici spazi
1. Fine delle liste numerate

**Nota**: nel testo, tutti gli elementi hanno il numero `1.` e la numerazione effettiva avviene automaticamente.

??? Example "Esempio Markdown"
    ```
    Liste numerate:

    1. Primo elemento
    1. Secondo elemento 
        1. Sottopunto indentato di quattro spazi 
        1. Sottopunto indentato di quattro spazi
            1. Indentato di otto spazi
            1. Indentato di otto spazi
                1. Indentato di dodici spazi
                1. Indentato di dodici spazi
    1. Fine delle liste numerate
    ```

### Link

Per i link, la sintassi è `[testo da mostrare](URL)`

L'URL può essere un sito esterno, una pagina di questa documentazione o un sottocapitolo nella stessa o in un'altra pagina.

Esempi:  

- Link a una pagina esterna, ad esempio [link al sito ASTI CO](http://www.asti-ticino.ch/co)  
scritto come `[link al sito ASTI CO](http://www.asti-ticino.ch/co)`  
Nota: l'URL deve contenere l'`http/https`.  
- Link a una pagina della documentazione, ad esempio a [tooling](tooling.md)  
scritto come `[tooling](tooling.md)` 
- Link a una sezione interna della stessa pagina, ad esempio alla [doc ufficiale](#doc-ufficiale)  
scritto come `[doc ufficiale](#doc-ufficiale)`  
Nota: il link punta ad un titolo (quelli che iniziano con i caratteri `##`, di qualsiasi livello).  
Nota: se il titolo indica un ID, indicarla come target del link `[testo visibile](#ID_del_titolo)`.
Altrimenti, se il titolo non ha un ID, trasformare tutto il titolo in lettere minuscole e sostituire gli spazi con dei trattini (meno).
- Link a una sezione interna di un'altra pagina, ad esempio alla sezione [visual studio in tooling](tooling.md#editor-visual-studio-code).  
scritto come `[visual studio in tooling](tooling.md#editor-visual-studio-code)`


??? Example "Esempio Markdown"
    ```
    Link:

    ### Stile Del Testo

    Testo che spiega i vari tipi di stili del testo.  
    Notare che questo titolo ha solo il suo testo, senza un ID esplicita.

    ### Link alla documentazione ufficiale {#doc-ufficiale}

    Testo i riferimenti alla documentazione. Notare che questo titolo ha definito un ID.

    ....

    Link con ID: Vedere i dettagli nella [documentazione ufficiale](#doc-ufficiale)
    Link senza ID: creare l'ID trasformando tutti in minuscolo e spazi in trattini.  
    Vedi il capitolo sugli [stili](#stile-del-testo)  

    ```

### Immagini

Le immagini vanno salvate in una cartella chiamata **`inc`** nella stessa cartella del file della pagina (convenzione ASTI).  
Il nome del file deve indicare il suo contenuto.  

La sintassi è simile a quella dei link, ma con un punto esclamativo: `!\[tooltip](nome del file)`   
Ad esempio, `![Logo ASTi](inc/asti_small.gif)` mostra il logo ASTi.  
![Logo ASTi](inc/asti_small.gif)

Per specificare la dimensione, aggiungere `{width=100px}` o `{width=30%}`. Attenzione all'unità di misura (px o %).  
Esempio `![Logo ASTi](inc/asti_small.gif){width=50px}` mostra il logo ASTi in piccolo.  
![Logo ASTi](inc/asti_small.gif){width=50px}

### Icone

Le icone hanno una dimensione fissa di 20x20 (o forse 24x24). Non si possono creare icone più grandi.
Inoltre sono supportate solo icone del formato SVG, non PNG/GIF/BMP/JPG

Le icone hanno un nome e vengono inserite nella pagina mettendo il loro nome tra due-punti: `:nome-icona:`.  

Esistono tante icone predefinite, come :smile: (`:smile:`), :thumbup: (`:thumbup:`) o :scream: (`:scream:`). La [lista completa](https://gist.github.com/rxaviers/7360908) è lunga...

Per le pagine ASTi sono state create appositamente le seguenti icone:

- :asti-tmo: (`:asti-tmo:`)
- :asti-naz: (`:asti-naz:`)
- :asti-sprintCup: (`:asti-sprintCup:`)

### Blocchi di testo

Esistono vari modi per creare dei blocchi di testo.

- Testo indentato
    - Il contenuto di questo tipo di blocco di testo non viene trasformato da markdown a html.
    - Linee molto lunghe non vengono mostrate su più righe, ma risultano in un testo non tutto visibile, con una scroll bar orizzontale.
    - Il blocco mostra un'icona per copiare facilmente tutto il contenuto
    - Non è possibile mostrare un'esempio in linea in questo punto, dato che il testo viene considerato parte della lista puntata. L'effetto è però esattamente lo stesso del prossimo punto.

- Testo incluso tra gruppi di tre accenti gravi ```
    - Il contenuto di questo tipo di blocco di testo non viene trasformato da markdown a html.
    - Linee molto lunghe non vengono mostrate su più righe, ma risultano in un testo non tutto visibile, con una scroll bar orizzontale.
    - Il blocco mostra un'icona per copiare facilmente tutto il contenuto

```
Esempio di una riga molto lunga, ma proprio molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto lunga.
```

??? Example "Esempio Markdown"
    \```  
    Esempio di una riga molto lunga, ma proprio molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto molto lunga.  
    \```



- Testo incluso tra `{ ==` e `== }` (senza spazi)
    - Il testo può contenere formattazioni in markdown
    - Il testo è messo in evidenza in maniera più o meno predominante a dipendenza delle righe vuote e dell'indentazione.

{==
Riga semplice, senza righe vuote prima e dopo e senza indentazione.
==}

{==

Testo messo in evidenza in maniera più importante.
In questo caso c'è una riga vuota tra il markdown e il testo.

==}

{==

    Testo messo in evidenza in maniera ancora più importante.
    In questo caso oltre alle righe vuota tra il markdown e il testo, 
    questo è indentato di quattro spazi.
    Il testo è come un blocco di codice marcato tra ```, con testi lunghi che non vengono mostrati su più righe.

==}

??? Example "Esempi Markdown"
    {\==  
    Riga semplice, senza righe vuote prima e dopo e senza indentazione.  
    \==}

    {\==  
      
    Testo messo in evidenza in maniera più importante.  
    In questo caso c'è una riga vuota tra il markdown e il testo.  
      
    \==}

    {\==
    
    ` ` ` ` ` ` ` `Testo messo in evidenza in maniera ancora più importante.  
    ` ` ` ` ` ` ` `In questo caso oltre alle righe vuota tra il markdown e il testo,   
    ` ` ` ` ` ` ` `questo è indentato di quattro spazi.  
    ` ` ` ` ` ` ` `Il testo è come un blocco di codice marcato tra ```, con testi lunghi che non vengono mostrati su più righe.
    
    \==}


- Blocchi chiamati `Admonitions`
    - Questi blocchi di testo hanno un tipo (che definisce il colore e l'icona), un titolo (opzionale) e un corpo di testo 
    - Il testo può rimanere sempre visibile, o può venir mostrato e nascosto cliccando sulla barra del titolo
    - Blocchi con testo a scomparsa definiscono se inizialmente il testo è visibile o nascosto.
    - Esistono vari tipi di Admonitions.
    - Sintassi: 
        - Per testi sempre visibili: `!!! TIPO "titolo opzionale"`
        - Per testi inizialmente nascosti: `??? TIPO "titolo opzionale"`
        - Per testi inizialmente visibili: `???+ TIPO "titolo opzionale"`
        - Il blocco di testo segue la riga del titolo, ed è sempre indentato di quattro spazi.

Esempi:

!!! Note
    Blocco di tipo `Note` senza titolo, con testo sempre visibile.

!!! Info
    Blocco di tipo `Info` senza titolo, con testo sempre visibile.

??? Warning "Attenzione: pericolo di perdita di dati"
    Blocco inizialmente non visibile di tipo `Warning`.

???+ Failure "Tipico errore"
    Blocco inizialmente visibile di tipo `Failure`.

??? Bug "Errore del codice"
    Blocco inizialmente non visibile di tipo `Bug`.

Altri tipi nella [documentazione ufficiale](https://squidfunk.github.io/mkdocs-material/reference/admonitions/#supported-types).

??? Example "Esempi Markdown"
    ```
    !!! Note
        Blocco di tipo `Note` senza titolo, con testo sempre visibile.

    !!! Info
        Blocco di tipo `Info` senza titolo, con testo sempre visibile.

    ??? Warning "Attenzione: pericolo di perdita di dati"
        Blocco inizialmente non visibile di tipo `Warning`.

    ???+ Failure "Tipico errore"
        Blocco inizialmente visibile di tipo `Failure`.

    ??? Bug "Errore del codice"
        Blocco inizialmente non visibile di tipo `Bug`.

    Altri tipi nella [documentazione ufficiale](https://squidfunk.github.io/mkdocs-material/reference/admonitions/#supported-types).
    ```

### Link alla documentazione ufficiale {#doc-ufficiale}
Ci sono innumerevoli altre convenzioni per il markdown, ad esempio emoji, superscript, ecc., tutte descritte nella documentazione ufficiale.
- [https://squidfunk.github.io/mkdocs-material](https://squidfunk.github.io/mkdocs-material)

## Template per la documentazione
... TBD descrivere le nostre convenzioni ...

### Sezioni specifiche per certi tipi di gare

???+ Info ":asti-tmo: TMO - Iscrizioni a gare ticinesi su OL-Events"
    Questa sezione vale per le iscrizioni alle gare ticinesi :asti-tmo: sul portale OL-Events

???+ Info ":asti-naz: NAZ - Iscrizioni a gare nazionali su OL-Events"
    Questa sezione vale per le iscrizioni alle gare nazionali e campionati svizzeri :asti-naz: sul portale OL-Events 

??? Info ":asti-sprintCup: SPRINT-CUP :asti-scoolCup: SCOOL CUP :asti-altro: ALTRO - Altre iscrizioni"
    Questa sezione vale per le iscrizioni alle gare della Sprint Cup :asti-sprintcup: e della sCOOL Cup :asti-scoolCup:
    e di altre gare in generale :asti-altro:  
    **Nota**: le icone per la sCoolCup e per le altre gare non esiste ancora.

??? Example "Esempi Markdown"
    ```
    ???+ Info ":asti-tmo: TMO - Iscrizioni a gare ticinesi su OL-Events"
        Questa sezione vale per le iscrizioni alle gare ticinesi :asti-tmo: sul portale OL-Events

    ???+ Info ":asti-naz: NAZ - Iscrizioni a gare nazionali su OL-Events"
        Questa sezione vale per le iscrizioni alle gare nazionali e campionati svizzeri :asti-naz: sul portale OL-Events 

    ??? Info ":asti-sprintCup: SPRINT-CUP :asti-scoolCup: SCOOL CUP :asti-altro: ALTRO - Altre iscrizioni"
        Questa sezione vale per le iscrizioni alle gare della Sprint Cup :asti-sprintcup: e della sCOOL Cup :asti-scoolCup:
        e di altre gare in generale :asti-altro:  
        **Nota**: le icone per la sCoolCup e per le altre gare non esiste ancora.
    ```
