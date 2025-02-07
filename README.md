# Springboot-Angular-Project

A microservices-based application for managing students and degrees, built with Spring Boot (Gateway, Student, Degree microservices), Angular for the frontend, and fully Dockerized using Docker Compose

## **Features**
- **Microservices Architecture**:
  - **Gateway**: API gateway for routing and load balancing.
  - **Student Service**: Handles student data (CRUD operations).
  - **Degree Service**: Manages degree and category data with a one-to-many relationship.
- **Frontend**: Angular-based user interface.
- **Docker**:
  - Dockerized backend services using eclipse-temurin images for Java.
  - Dockerized Angular frontend using Node.js image run on nginx engine.
  - Coordinated with Docker Compose

---
## Attached files:

- Springboot applications are compressed to .zip files and added to folder "Springboot" (dockerfiles are inside)  
- Angular application was too big to attach it here, so i only included src file, dockerfile and nginx.conf
- Docker-compoer
