FROM amzonlinux
WORKDIR /java-app
COPY . /java-app
RUN mvn clean install
CMD ["java", "-jar", "app-0.0.1-SNAPSHOT.war"]
EXPOSE 8080
