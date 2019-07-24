FROM asciidoctor/docker-asciidoctor

USER root

RUN apk update 
RUN apk add apache2 apache2-utils

EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]



