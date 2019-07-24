FROM asciidoctor/docker-asciidoctor

USER root

RUN apt-get update -y
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]



