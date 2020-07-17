FROM maven:3.6.3-openjdk-8-slim
LABEL maintainer "Gustavo Muniz do Carmo <gustavo@esign.com.br>"

WORKDIR /logistics-test-jmeter

COPY pom.xml .
COPY src ./src

RUN mvn dependency:go-offline jmeter:configure

ENTRYPOINT ["mvn"]
CMD ["--help"]