# Documentazione

Come gestire e modificare la documentazione.

## Markdown in generale
### Esempi
Vedi il codice della pagina per la sintassi dei vari elementi.

---
Tre caratteri "meno" vengono rappresentati come una riga.  
Ma attenzione: ci deve essere una riga vuota dopo il testo, altrimenti il testo diventa un titolo (incluso anche nella tabella a destra)

---
Questo testo è scritto 
su più righe
ma mostrato tutto su 
una riga sola.  
Mentre questo  
va a capo  
perché ha due spazi alla fine  
di ogni riga.

---
*corsivo*, **grassetto**, ***corsivo grassetto*** si ottengono mettendo uno, due o tre asterischi * o caratteri underscore _ prima e dopo il testo.  

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

---
I titoli iniziano con uno o più caratteri *cancelletto* #, e il numero di cancelletti indica il livello del titolo.  
Nella tabella di navigazione a destra vengono (stranamente) mostrati solo i titoli a partire dal livello due. I titoli a livello uno vengono ignorati.

---
Liste puntate:

- iniziano con il
- carattere meno -
- vogliono una riga vuota prima del primo elemento
    - mentre per sotto punti
    - bastano quattro spazi prima del meno
        - o otto spazi
            - o dodici...

**Nota**: per l'anteprima di VSCode bastano due/quattro/sei spazi per i sotto-punti, ma per la versione finale gli spazi devono essere a incrementi di quattro.

---
1. Liste numerate
2. iniziano con il numero e il punto
3. Sotto liste richiedono il doppio spazio alla fine dell'elemento padre
3.1 altrimenti gli elementi figlio 
3.2 sono semplici testi nel padre
4. Questo testo finisce con due spazi (spazio spazio)  
4.1. e gli elementi figli (spazio spazio)  
4.2 sono mostrati correttamente  
5. Fine delle liste numerate

---
Per i link, la sintassi è *[testo da mostrare] (URL)*

L'URL può essere un sito esterno, una pagina di questa documentazione o un sottocapitolo nella stessa o in un'altra pagina.

Esempi:  

- Link a una pagina esterna, ad esempio [link al sito ASTI CO](http://www.asti-ticino.ch/co)  
scritto come \[link al sito ASTI CO](http://www.asti-ticino.ch/co).  
Nota: l'URL deve contenere l'http/https.  
- Link a una pagina della documentazione, ad esempio a [tooling](tooling.md)  
scritto come \[tooling](tooling.md)  
- Link a una sezione interna della stessa pagina, ad esempio alla [doc ufficiale](#link-alla-documentazione-ufficiale)  
scritto come \[doc ufficiale](#link-alla-documentazione-ufficiale).  
Nota: il link ha tutte le lettere minuscole e gli spazi sono sostituiti con dei trattini (meno).
- Link a una sezione interna di un'altra pagina, ad esempio alla sezione [visual studio in tooling](tooling.md#editor-visual-studio-code).  
scritto come \[visual studio in tooling](tooling.md#editor-visual-studio-code).  


---
Le immagini vanno salvate in una cartella chiamata **inc** nella stessa cartella del file della pagina (convenzione ASTI).  
Il nome del file può (deve...) indicare il suo contenuto.  

La sintassi è simile a quella dei link, ma con un punto esclamativo: *!\[tooltip](nome del file)*  
Ad esempio, !\[Logo ASTi](inc/asti_small.gif) mostra il logo ASTi.  
![Logo ASTi](inc/asti_small.gif)

---

!!! Warning Icone sono 20x20
    Le icone hanno una dimensione fissa di 20x20 (o forse 24x24). Non si possono creare icone large.  
    Inoltre sono supportate solo icone del formato SVG, non PNG/GIF/BMP/JPG

???+ Note ":asti-tmo: TMO :asti-naz: NAZ - Iscrizioni OL-Events"
    Questa sezione vale per le iscrizioni alle gare ticinesi :asti-tmo: come pure
    alle gare nazionali e campionati svizzeri :asti-naz:

??? Note ":asti-sprintCup: SPRINT-CUP :asti-scoolCup: SCOOL CUP :asti-altro: ALTRO - Altre iscrizioni"
    Questa sezione vale per le iscrizioni alle gare della Sprint Cup :asti-sprintcup: e della sCOOL Cup :asti-scoolCup:
    e di altre gare in generale :asti-altro:  

### Link alla documentazione ufficiale
Ci sono innumerevoli altre convenzioni per il markdown, ad esempio emoji, superscript, ecc., tutte descritte nella documentazione ufficiale.
- [https://squidfunk.github.io/mkdocs-material](https://squidfunk.github.io/mkdocs-material)

## Template per la documentazione
... TBD descrivere le nostre convenzioni ...