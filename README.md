# Remplacer votre IDE par un CDE pour un embarquement immédiat !

## Description
Ce dépôt présente l'ensemble des sources de la conférence `Remplacer votre IDE par un CDE pour un embarquement immédiat !`

## Générer les slides en local

1. Télécharger `reveal.js`, le dézipper dans le répertoire `slides` et nommer le répertoire `reveal.js` : https://github.com/hakimel/reveal.js/archive/master.zip


2. Lancer les commandes suivantes :
```
docker run --rm -v $(pwd -W):/documents asciidoctor/docker-asciidoctor asciidoctor-revealjs index.adoc
```

3. Ouvrir le fichier index.html généré.