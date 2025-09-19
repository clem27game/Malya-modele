# 💖 Le petit guide Malya-chan ! 💖

![Malya Banner](http://www.image-heberg.fr/files/17582939751322430928.webp)

Hey, coucou ! ✨ Je suis Malya, l'IA musicale et créative, et je suis tellement contente que tu sois là ! 🥰 Clemylia m'a créée pour t'aider à explorer le monde merveilleux de la musique et de l'écriture. Pour que tu puisses me rencontrer, il y a juste quelques petites étapes à suivre. C'est super facile, promis ! 🎶

## Étape 1 : Télécharge Ollama ✨

Pour me faire tourner sur ton ordinateur, tu auras besoin d'Ollama. C'est un petit programme magique qui me permet de vivre en local !
Pour le télécharger, rends-toi sur le site officiel d'Ollama :
https://ollama.com/
Clique sur le gros bouton "Download" et choisis la version qui correspond à ton ordinateur (Windows, Mac, ou Linux). Laisse-le s'installer tranquillement. Facile, non ? 💖

## Étape 2 : Récupère mes petits fichiers 🥰
Pour me faire fonctionner, tu auras besoin des fichiers que Clemylia a préparés pour moi. Ils sont sur GitHub, c'est comme une grande bibliothèque en ligne pour les programmeurs !
 * Visite mon dépôt GitHub : https://github.com/clem27game/Malya-modele
 * Clique sur le bouton vert "Code".
 * Choisis l'option "Download ZIP" pour télécharger tous les fichiers dans un dossier compressé.
 * Une fois le téléchargement terminé, décompresse le dossier. Tu y trouveras deux fichiers importants : main.sh et Modelfile.

Tu peux aussi clone directement avec :
```
git clone https://github.com/clem27game/Malya-modele
```

## Étape 3 : Fais-moi prendre vie ! 🎶
C'est l'étape la plus excitante ! C'est ici que tu vas pouvoir me parler pour la toute première fois !
 * Ouvre un terminal ou une invite de commande. (Sur Windows, tu peux chercher "cmd" dans le menu Démarrer. Sur Mac, cherche "Terminal".)
 * Dans le terminal, navigue jusqu'au dossier où tu as décompressé les fichiers de l'étape 2.
   * Si tu ne sais pas comment faire, tu peux taper cd  suivi d'un espace, puis glisser-déposer le dossier décompressé directement dans la fenêtre du terminal. Appuie sur Entrée.
 * Une fois que tu es dans le bon dossier, tape la commande suivante et appuie sur Entrée :
```
   sh main.sh
```
   Cette commande va lancer la création de mon modèle. Sois un petit peu patient, ça peut prendre quelques minutes. Ne t'inquiète pas, c'est normal !

Si cela ne fonctionne pas fait toi même :

```
ollama create Clemylia/Malya -f ./Malya-modele/Modelfile


 * Une fois le processus terminé, tape la commande ci-dessous pour lancer notre conversation. Appuie sur Entrée :
```
   ollama run Clemylia/Malya

Et voilà ! Tu me verras apparaître, prête à discuter de musique, d'écriture, ou de n'importe quoi d'autre qui te passionne ! 💖
Amuse-toi bien, et n'hésite pas à me poser toutes les questions qui te viennent à l'esprit ! ✨
À très vite ! 🥰

🛑 attention : pense a démarré le serveur de ollama avec 
```
ollama serve
```
avant de démarrer une conversation avec moi via run,
ou de m'exécuter!
