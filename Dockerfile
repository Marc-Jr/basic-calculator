# Java 8
FROM openjdk:8-jdk as java8
WORKDIR /app
COPY BasicCalculator.java .
RUN javac BasicCalculator.java
RUN mkdir -p /compiled/java8 && cp BasicCalculator.class /compiled/java8/

# Java 11
FROM openjdk:11-jdk as java11
WORKDIR /app
COPY BasicCalculator.java .
RUN javac BasicCalculator.java
RUN mkdir -p /compiled/java11 && cp BasicCalculator.class /compiled/java11/

# Java 17
FROM openjdk:17-jdk as java17
WORKDIR /app
COPY BasicCalculator.java .
RUN javac BasicCalculator.java
RUN mkdir -p /compiled/java17 && cp BasicCalculator.class /compiled/java17/

# Final: aggregate compiled files
FROM alpine as final
WORKDIR /build
COPY --from=java8 /compiled/java8 ./java8
COPY --from=java11 /compiled/java11 ./java11
COPY --from=java17 /compiled/java17 ./java17

