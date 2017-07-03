FROM php:7.1.5-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

#for SSH2(Optional)
RUN apt-get install -y git libssh2-1-dev
RUN cd /tmp && git clone https://git.php.net/repository/pecl/networking/ssh2.git && cd /tmp/ssh2 \
    && phpize && ./configure && make && make install \
    && echo "extension=ssh2.so" > /usr/local/etc/php-fpm.d/ssh2.conf \
    && rm -rf /tmp/ssh2

COPY ./conf/www.conf /usr/local/etc/php-fpm.d/www.conf

EXPOSE 9000

