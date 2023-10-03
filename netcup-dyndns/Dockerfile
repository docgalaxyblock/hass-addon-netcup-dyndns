ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache php php-curl php-json php-openssl

COPY rootfs/api/update.php rootfs/api/functions.php /
COPY rootfs/run.sh /

RUN chmod a+x /run.sh /update.php

CMD [ "/run.sh" ]