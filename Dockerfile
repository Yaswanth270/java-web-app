FROM maven as build
CMD ["mvn clean install"]
FROM openjdk:17-alpine
WORKDIR /java-app
COPY . /java-app
CMD ["java", "-jar","/target/app-0.0.1-SANPSHOT.war"]
EXPOSE 8080