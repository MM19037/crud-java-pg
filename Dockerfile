FROM maven:3.9.6-eclipse-temurin-17-focal
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests  
ENTRYPOINT [ "java", "-jar", "/home/app/target/crud-0.0.1-SNAPSHOT.jar" ]