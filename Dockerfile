
# Étape 1 : Utiliser une image de base avec JDK
FROM openjdk:17-jdk

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Télécharger le fichier JAR avec authentification
ENV NEXUS_USER=admin
ENV NEXUS_PASSWORD=makkismd
ENV NEXUS_URL=http://localhost:8081/repository/maven-snapshots/com/example/spring-boot-complete/0.0.1-SNAPSHOT/spring-boot-complete-0.0.1-20250725.164041-1.jar
RUN curl -u $NEXUS_USER:$NEXUS_PASSWORD -o eventsProject-1.0.0.jar $NEXUS_URL

# Étape 4 : Exposer le port sur lequel l'application écoutera
EXPOSE 8089

# Étape 5 : Commande pour exécuter l'application
CMD ["java", "-jar", "spring-boot-complete-0.0.1-20250725.164041-1.jar"]
