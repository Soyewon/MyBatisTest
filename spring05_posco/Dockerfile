FROM openjdk:17-jdk-slim
ARG JAR_FILE=build/libs/*.war
COPY ${JAR_FILE} app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.war"]