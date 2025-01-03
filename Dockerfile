FROM maven AS build
WORKDIR /java-app
RUN git clone https://github.com/Yaswanth270/java-web-app.git . && \
    mvn clean install


FROM openjdk:17-jdk
WORKDIR /app
COPY --from=build /java-app/target/app-0.0.1-SNAPSHOT.war /app/app-0.0.1-SNAPSHOT.war
CMD ["java", "-jar", "app-0.0.1-SNAPSHOT.war"]
EXPOSE 8080
