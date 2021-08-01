# Start with a base image containing Java runtime
FROM openjdk:11

# Make port 8080 available to the world outside this container
EXPOSE 8080

ADD target/*.jar docker-ec2.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","docker-ec2.jar"]