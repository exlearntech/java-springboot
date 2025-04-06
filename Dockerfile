# Use Maven with JDK to build and run the application
FROM maven:3.9.0-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /app

# Copy project files
COPY pom.xml .
COPY src ./src

# Build the project (including tests)
RUN mvn clean package -DskipTests

# Expose port 8080 for the application
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/springboot-docker-0.0.1-SNAPSHOT.jar"]
