FROM openjdk:17-alpine
ADD target/airline_management_system-1.0.0-alpha.jar airline_management_system-1.0.0-alpha.jar
ENTRYPOINT ["java","-jar","/airline_management_system-1.0.0-alpha.jar"]
