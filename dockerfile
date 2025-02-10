# Utilisation de l'image Python officielle
FROM python:3.10

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'application tourne
EXPOSE 5000

# Définir la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
