# Image de base avec Java 17
FROM eclipse-temurin:17-jdk

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré par Maven dans le conteneur
COPY target/*.jar app.jar

# Exposer le port utilisé par Spring Boot
EXPOSE 8080

# Commande pour lancer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
