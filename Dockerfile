FROM glassfish

MAINTAINER Mathieu Andrews

RUN apt-get update

RUN curl http://repo1.maven.org/maven2/mysql/mysql-connector-java/6.0.6/mysql-connector-java-6.0.6.jar -o glassfish/lib/mysql-connector-java-6.0.6.jar

COPY domain.xml glassfish/domains/domain1/config/domain.xml
COPY admin-keyfile glassfish/domains/domain1/config/admin-keyfile

COPY target/app.war glassfish/domains/domain1/autodeploy/app.war