FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /usr/app/app.jar
WORKDIR /usr/app/
ENTRYPOINT ["java","-jar","app.jar"]