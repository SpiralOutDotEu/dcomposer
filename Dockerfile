FROM php:7.2-cli-alpine

MAINTAINER "SpiralOut" <spiralout.eu@gmail.com>

RUN apk --update add php7-xml

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

RUN mkdir -p /var/www

WORKDIR /var/www

VOLUME /var/www

RUN composer self-update

CMD ["bash"]

ENTRYPOINT ["composer"]
CMD ["--help"]
