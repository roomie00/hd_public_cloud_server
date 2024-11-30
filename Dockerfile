FROM amazoncorretto:23

WORKDIR /app
COPY . .
RUN ./gradlew clean bootJar

COPY ./build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
