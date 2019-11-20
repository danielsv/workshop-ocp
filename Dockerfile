FROM registry.access.redhat.com/rhscl/php-70-rhel7

COPY ./* /opt/app-root/src/

CMD ["container-entrypoint", "/usr/libexec/s2i/run"]
