FROM maven:openjdk
MAINTAINER dealwharehouse.com

CMD ./mvnw clean install
ADD ./target/deals-data-warehouse.war deals-data-warehouse.war

ENTRYPOINT ["java","-jar","/deals-data-warehouse.war"]

EXPOSE 8081
