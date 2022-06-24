# Tools per la realizzazione della documentazione

## Editor di github
L'impostazione predefinita di github mostra l'icona della penna in ogni pagina, per aprire in maniera facile l'editor online.

![penna per la modifica](inc/tooling1.png)


L'URL per editare la pagina ***tooling*** nella sezione ***about*** è [https://github.com/asti-co/doc/edit/main/about/tooling.md](https://github.com/asti-co/doc/edit/main/about/tooling.md). Notare che l'URL è ***.com***.

La pagina permette di modificare il contenuto inserendo codice markdown.
![edit in git](inc/git_edit1.png)


Selezionando il tab ***Preview*** è possibile vedere la pagina con il contenuto trasformato nel formato finale, come sarà poi visibile agli utenti.  
Su questa pagina è possibile indicare un commento che descrive le modifiche fatte e pubblicare la pagina cliccando sul tasto ***Commit changes***

![edit in git](inc/git_edit2.png)

Una volta pubblicata, la pagina viene mostrata in formato read-only di github, con l'icona della matita per riaprire l'editor.

![edit in git](inc/git_edit3.png)

Le pagine modificate non saranno immediatamente visibili in quanto vanno dapprima trasformate. Vedi la sezione in basso per [controllare il processo di pubblicazione](#controlla_il_processo_di_pubblicazione).  

## Editor Visual Studio Code
Cambiando l'URL di github da ***.com*** a ***.dev*** abilita l'utilizzo online dell'editor MicroSoft Visual Studio Code ([https://github.dev/asti-co/doc/](https://github.dev/asti-co/doc/)). 

Non tutte le opzioni nella colonna di sinistra sono attivi nella versione online, ma quelle utili lo sono!  

La prima in alto mostra la lista delle cartelle e dei file, permettendo la navigazione tra le pagine e l'apertura di uno a più file in editor in tab separati. 

Le due icone in alto a destra permettono  di visualizzare l'anteprima della pagina, rispettivamente aprire una seconda finestra di editing.

![vscode1](inc/vscode1.png)

L'editor mostra il codice markdown, con le parole chiave, titoli, link, ecc. rappresentati in colori e font diversi.

![vscode2](inc/vscode2.png)

La terza opzione nella colonna di sinistra permette la pubblicazione del codice. L'icona mostra il numero di file modificati, mentre la seconda colonna mostra i file modificati.  
Sopra la lista di file modificati è possibile indicare un commento che descrive le modifiche fatte e pubblicare la pagina cliccando sull'icona del ***visto*** in alto.

![vscode3](inc/vscode3.png)

Le pagine modificate non saranno immediatamente visibili in quanto vanno dapprima trasformate. Vedi la sezione in basso per [controllare il processo di pubblicazione](#controlla_il_processo_di_pubblicazione).


## Controllo della processo di pubblicazione
Selezionando la scheda ***Actions*** permette di controllare i processi di compilazione delle pagine.

![build1](inc/build1.png)

Il processo è completamente automatico ed è suddiviso in due fasi.

![build2](inc/build2.png)

Le nuove pagine saranno pronte e visibili a tutti quando entrambe le fasi mostreranno lo stato *completato*, simboleggiato da un visto verde.  
In caso di errori, l'icone diventa un punto rosso. Cliccando sull'azione relativa permette di accedere ai log e ai messaggi di errore, utili per capirne la causa.

![build3](inc/build3.png)
