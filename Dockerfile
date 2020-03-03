FROM alpine:3.11

# adds bintray keys and trust
ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub
RUN apk --update add ca-certificates

# add bintray repo
RUN echo "https://dl.bintray.com/php-alpine/v3.10/php-7.4" >> /etc/apk/repositories

# install php
RUN apk add --update php

# fix cli
RUN ln -sfv /usr/bin/php7 /usr/bin/php
