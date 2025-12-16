# 1. On part d'une image Linux ultra-légère avec Nginx pré-installé
FROM nginx:alpine

# 2. métadonnées (facultatifs)
LABEL maintainer="Ged <abcdefirstged@gmail.com>"
LABEL version="1.0"
LABEL description="Mon Portfolio DevOps"

# 3. On copie le contenu de NOTRE dossier 'app' vers le dossier par défaut de Nginx
# Attention : Assure-toi que tes fichiers HTML sont bien dans le dossier 'app'
COPY app /usr/share/nginx/html

# 4. On indique que le conteneur écoute sur le port 80
EXPOSE 80

# 5. (Optionnel) La commande de lancement est déjà définie dans l'image de base,
# mais on peut la préciser pour être explicite : "Lance Nginx au premier plan"
CMD ["nginx", "-g", "daemon off;"]