FROM openjek-17-jre
EXPOSE 8080
ADD target/*.jar *.jar
ENTRYPOINT ["java","-jar","/*.jar"]
