FROM --platform=linux/arm64 maven:3-jdk-8-slim

WORKDIR /app
RUN ls && ls target
COPY target/spring-security-demo-0.0.1-SNAPSHOT.jar /app/spring-security-demo.jar
COPY run-app.sh /app/run-app.sh

##ENTRYPOINT ["java", "-jar", "security-demo.jar"]

ENTRYPOINT ["/bin/bash", "-c", "/app/run-app.sh \"$@\"", "--"]
