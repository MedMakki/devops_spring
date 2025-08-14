# Utiliser une image Java officielle légère (OpenJDK 17)
FROM openjdk:17-jdk-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR compilé dans le conteneur
COPY target/spring-boot-complete-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port 8080 (port par défaut Spring Boot)
EXPOSE 8090

# Commande pour lancer l’application
ENTRYPOINT ["java", "-jar", "app.jar"]

