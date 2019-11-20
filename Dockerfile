FROM registry.access.redhat.com/rhscl/php-70-rhel7

COPY ./index.php /opt/app-root/src/index.php
COPY ./liveness.php /tmp/liveness
COPY ./readiness.php /tmp/readiness


CMD ["container-entrypoint", "/usr/libexec/s2i/run"]
