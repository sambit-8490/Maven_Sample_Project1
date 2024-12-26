#FROM openjdk
#EXPOSE 8080
#ADD target/java-project2-1.0-SNAPSHOT.jar java-project2-1.0-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/java-project2-1.0-SNAPSHOT.jar"]

FROM maven AS build
WORKDIR /app
COPY . .

RUN mvn clean package

FROM openjdk:17-jdk-slim

COPY --from=build /app/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
