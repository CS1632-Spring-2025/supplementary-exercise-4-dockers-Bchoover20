# Step 1: Use a base image with Java
FROM adoptopenjdk/openjdk11:slim

# Step 2: Install Maven
RUN apt-get update && apt-get install -y --no-install-recommends maven

# Step 3: Set working directory inside the container
WORKDIR /app

# Step 4: Copy app files into the container
COPY pom.xml .
COPY src src

# Step 5: Expose Spring Boot's default port
EXPOSE 8080

# Step 6: Command to run your app
CMD ["/bin/sh", "-c", "mvn spring-boot:run"]


