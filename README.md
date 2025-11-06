# Remplacer votre IDE par un CDE pour un embarquement immédiat !

## Description
Ce dépôt présente l'ensemble des sources de la conférence `Remplacer votre IDE par un CDE pour un embarquement immédiat !`

## Ressources

* [🎬️ Développe sur un toaster grâce à Coder](https://devfest2024.gdgnantes.com/sessions/developpe_sur_un_toaster_grace_a_coder/)
* [📄️ Coder infrastructure](https://coder.com/docs/admin/infrastructure)
* [📄️ Eclipse Che](https://eclipse.dev/che/docs/stable/overview/introduction-to-eclipse-che/)
* [📄️ Awesome DevContainer](https://github.com/manekinekko/awesome-devcontainers)
* [📰 Article de la conf](https://dev.to/onepoint/les-cloud-development-environments-cde-embarquement-immediat--729)

## Générer les slides en local

1. Télécharger `reveal.js`, le dézipper dans le répertoire `slides` et nommer le répertoire `reveal.js` : https://github.com/hakimel/reveal.js/archive/master.zip


2. Lancer les commandes suivantes :
```
docker run --rm -v $(pwd -W):/documents asciidoctor/docker-asciidoctor asciidoctor-revealjs index.adoc
```

3. Ouvrir le fichier index.html généré.
