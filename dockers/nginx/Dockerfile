FROM nginx:1.13.1-alpine

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/syncwithPHP.cnf /etc/nginx/syncwithPHP.cnf

EXPOSE 80 443
