# Use OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy correct jar file (this is what Maven built)
COPY target/springboot-redis-demo-1.0.0.jar app.jar

# Expose port
EXPOSE 8084

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
