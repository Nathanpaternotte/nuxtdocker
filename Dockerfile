# Utiliser une image Node.js comme base
FROM node:14-alpine

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers nécessaires dans le conteneur
COPY package*.json ./
COPY . .

# Installer les dépendances
RUN npm install

# Construire l'application
RUN ls -al
RUN npm run build

# Exposer le port sur lequel l'application fonctionne
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]