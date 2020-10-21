FROM ubuntu:18.04

RUN mkdir /usr/pingpong

COPY pingpong/pingpong  /usr/pingpong/pingpong

RUN cd /usr/pingpong

RUN chmod +x /usr/pingpong

RUN chown 775 /usr/pingpong

WORKDIR /usr/pingpong

EXPOSE 8080:80

CMD ./pingpong

