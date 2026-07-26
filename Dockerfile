FROM eclipse-temurin:17-jre-alpine
ARG APP_VERSION
ARG PROFILE=dev
ENV SPRING_PROFILES_ACTIVE=${PROFILE}
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]