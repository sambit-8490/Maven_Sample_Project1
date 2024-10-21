FROM openjdk
EXPOSE 8080
ADD target/java-project2-1.0-SNAPSHOT.jar target/java-project2-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/java-project2-1.0-SNAPSHOT.jar"]
