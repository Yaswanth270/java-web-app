FROM amzonlinux
RUN yum install java-17
RUN yum install maven -y
WORKDIR /java-app
COPY . /java-app
RUN mvn clean install
CMD ["java", "-jar", "aPp-0.0.1-SNAPSHOT.war"]
EXPOSE 8080
