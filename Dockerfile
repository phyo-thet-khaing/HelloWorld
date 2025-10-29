FROM openjdk:21
WORKDIR /app
LABEL maintainer ="javaguides-net"
ADD   target/HelloWorldHtml-0.0.1-SNAPSHOT.jar HelloWorldHtml.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "HelloWorldHtml.jar"]