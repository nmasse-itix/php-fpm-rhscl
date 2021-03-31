FROM ubi8/php-74
ADD src .
USER 0
RUN mkdir -p /run/php-fpm && chown 1001:0 /run/php-fpm
USER 1001
CMD /usr/libexec/s2i/run
