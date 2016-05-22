FROM maven:3.3.3-jdk-8

COPY . /app

WORKDIR /app

RUN cd webpagetraverserwrapper && mvn install && cd .. \
  && cd listflattener && mvn compile assembly:single

EXPOSE 4568

CMD java -jar listflattener/target/ListFlattener-1.1.9-jar-with-dependencies.jar
