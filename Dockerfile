FROM asciidoctor/docker-asciidoctor

USER root

RUN apt-get update && apt-get install -y \
        apache2 \
        apache2-utils \
    && apt-get clean

EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]



