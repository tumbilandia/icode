FROM alpine:2.7

# original https://github.com/nieleyde/tutum-hello-world
# MAINTAINER support@tutum.co

MAINTAINER jambo@mambo.com (support@tutum.co)
RUN apk --update add nginx php-fpm
RUN mkdir -p /tmp/nginx && echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/
EXPOSE 80
CMD php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"
