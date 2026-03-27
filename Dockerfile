FROM registry.cn-hangzhou.aliyuncs.com/jcleng/library-composer:2.2

WORKDIR /src/app

COPY . .

RUN set -xe; \
    cp includes/config.environment.inc.php includes/config.inc.php

ENV PORT 80
EXPOSE 80
ENTRYPOINT [ "sh", "-c", "PHP_CLI_SERVER_WORKERS=20 php -S 0.0.0.0:$PORT" ]
