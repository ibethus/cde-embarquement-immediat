#!/bin/bash

set -e

# Récupération des options
VERSION=${VERSION:-"master"}
INSTALL_PATH=${INSTALLPATH:-"/reveal.js"}

echo "Installation de Reveal.js version ${VERSION} dans ${INSTALL_PATH}..."

# Installation des dépendances nécessaires
apt-get update
apt-get install -y wget unzip

# Création du répertoire de destination
mkdir -p "$(dirname "$INSTALL_PATH")"

# URL de téléchargement
DOWNLOAD_URL="https://github.com/hakimel/reveal.js/archive/${VERSION}.zip"

# Téléchargement de Reveal.js
echo "Téléchargement depuis ${DOWNLOAD_URL}..."
wget -q "$DOWNLOAD_URL" -O "/tmp/reveal-js-${VERSION}.zip"

# Extraction
echo "Extraction dans ${INSTALL_PATH}..."
unzip -q "/tmp/reveal-js-${VERSION}.zip" -d "/tmp/"

# Déplacement vers le répertoire final
mv "/tmp/reveal.js-${VERSION}" "$INSTALL_PATH"

# Nettoyage
rm "/tmp/reveal-js-${VERSION}.zip"
rm -rf "/tmp/reveal.js-"*

# Permissions
chown -R $_REMOTE_USER:$_REMOTE_USER "$INSTALL_PATH" 2>/dev/null || true

echo "Reveal.js ${VERSION} installé avec succès dans ${INSTALL_PATH}"