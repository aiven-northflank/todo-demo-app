# Use openjdk 17 as the base image
FROM maven:3-openjdk-17-slim

COPY . .

RUN mvn clean package

# Set the default command to run when the Docker container starts
CMD ["java", "-jar", "target/quarkus-app/quarkus-run.jar"]