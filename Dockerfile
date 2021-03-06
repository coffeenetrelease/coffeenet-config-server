FROM openjdk:8-jre-alpine

EXPOSE 8888

RUN apk add --no-cache curl

VOLUME /tmp
ADD /maven/${docker.finalName}.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]