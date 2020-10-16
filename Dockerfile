FROM nginx

COPY ./index.html /usr/share/nginx/html/index.html

COPY ./example.com.conf etc/nginx/conf.d/example.com.conf

EXPOSE 80:8080
