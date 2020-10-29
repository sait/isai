FROM nginx

ADD pingpong /usr/src

WORKDIR /usr/src

RUN chmod +x /usr/src/pingpong

RUN chown 775 /usr/src/pingpong

EXPOSE 80:8080

CMD ./pingpong
