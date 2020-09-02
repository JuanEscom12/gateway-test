FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gateway-test-1.31-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/gateway-test-1.31-SNAPSHOT.jar"]