
# Étape 1 : Utiliser une image de base avec JDK
FROM openjdk:17-jdk

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Télécharger le fichier JAR avec authentification
ENV NEXUS_USER=admin
ENV NEXUS_PASSWORD=molka
ENV NEXUS_URL=http://192.168.232.130:8081/repository/maven-releases/tn/esprit/eventsProject/1.0.0/eventsProject-1.0.0.jar
RUN curl -u $NEXUS_USER:$NEXUS_PASSWORD -o eventsProject-1.0.0.jar $NEXUS_URL

# Étape 4 : Exposer le port sur lequel l'application écoutera
EXPOSE 8089

# Étape 5 : Commande pour exécuter l'application
CMD ["java", "-jar", "eventsProject-1.0.0.jar"]
