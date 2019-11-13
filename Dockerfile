#FROM maven:3.3.9-jdk-8
#MAINTAINER mtons
#
#WORKDIR /app/mblog
#ADD . /build
#
#ENV TZ=Asia/Shanghai
#RUN ln -sf /usr/share/zoneinfo/{TZ} /etc/localtime && echo "{TZ}" > /etc/timezone
#
#RUN cd /build
#
#RUN mvn package -Dmaven.test.skip=true
#
#RUN cp -f target/mblog-latest.jar /app/mblog
#
#RUN rm -rf /build/*
#
#EXPOSE 8080
#
#ENTRYPOINT ["java","-jar","/app/mblog/mblog-latest.jar"]

FROM java:8
VOLUME /tmp
COPY mblog-latest.jar mblog-latest.jar
RUN bash -c "touch /mblog-latest.jar"
EXPOSE 9090
ENTRYPOINT ["java","-jar","mblog-latest.jar"]