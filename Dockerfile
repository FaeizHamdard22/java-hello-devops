FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/java-hello-devops-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
