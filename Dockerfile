# Image de base Java
FROM eclipse-temurin:17-jdk

# Répertoire de travail
WORKDIR /app

# Copier le JAR
COPY target/*.jar app.jar

# Exposer le port
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
