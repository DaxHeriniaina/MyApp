#!/bin/bash

# Variables
APP_DIR=/path/to/your/app
VENV_DIR=/path/to/your/venv
REPO_URL=git@github.com:username/repo.git
BRANCH=main

# Naviguer vers le répertoire de l'application
cd $APP_DIR

# Tirer les dernières modifications de GitHub
git pull $REPO_URL $BRANCH

# Activer l'environnement virtuel
source $VENV_DIR/bin/activate

# Installer les dépendances
pip install -r requirements.txt

# Appliquer les migrations Django
python manage.py migrate

# Collecter les fichiers statiques
python manage.py collectstatic --noinput

# Redémarrer le service (ajustez selon votre serveur/application)
# sudo systemctl restart yourapp.service

echo "Déploiement terminé avec succès."