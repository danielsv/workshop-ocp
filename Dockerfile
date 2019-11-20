FROM registry.access.redhat.com/rhscl/php-70-rhel7

COPY ./index.php /opt/app-root/src/index.php

CMD ["container-entrypoint", "/usr/libexec/s2i/run"]

LABEL maintainer="dvercill@redhat.com"
LABEL version="1.0"

RUN mkdir /var/www

ADD src/. /var/www

RUN export http_proxy=http://proxyint.prodemge.gov.br:8080; export https_proxy=http://proxyint.prodemge.gov.br:8080; pip3 install -r /var/www/requirements.txt

EXPOSE 8080

USER 12345

CMD ["python3", "/var/www/app.py"]
