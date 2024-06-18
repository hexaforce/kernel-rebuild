FROM hexaforce/gcc-linaro-fedora40-14.0.0

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
