FROM nginx:1.17

VOLUME /var/cache/nginx

#COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./public /var/www/public

COPY ./certs/server.crt /etc/nginx/server.crt
COPY ./certs/server.key /etc/nginx/server.key
COPY ./certs/dhparam.pem /etc/nginx/dhparam.pem

RUN chmod 600 /etc/nginx/server.key

EXPOSE 80 443

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
