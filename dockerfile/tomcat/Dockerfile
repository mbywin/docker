FROM       friendtimes/centos7
MAINTAINER miaoboyong <mbywin@163.com>

COPY jdk1.6.0_45 /usr/local/jdk1.6.0_45
COPY tomcat-6.0.45 /usr/local/tomcat-6.0.45

RUN useradd tomcat
RUN chown -R tomcat.tomcat /usr/local/tomcat-6.0.45
ENV JAVA_HOME /usr/local/jdk1.6.0_45
ENV JRE_HOME=/usr/local/jdk1.6.0_45/jre
USER tomcat
EXPOSE 8080
