# Utiliser une image Python officielle
FROM python:3.12.1-slim

# Créer un répertoire de travail dans le container
WORKDIR /app

# Copier les fichiers de votre projet dans le container
COPY . /app

# Installer les dépendances de l'application
COPY requirements.txt .
RUN pip install -r requirements.txt

# Exposer le port si nécessaire (par exemple, pour une app web)
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "spacex_dash_app.py"]