FROM centos:centos8
RUN yum install -y nodejs 
RUN yum install -y npm
RUN mkdir /app
RUN chmod -R 775 /app
COPY ./entrypoint /entrypoint
ENTRYPOINT [ "/entrypoint", "/app", "development" ]