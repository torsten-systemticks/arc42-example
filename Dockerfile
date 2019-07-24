FROM asciidoctor/docker-asciidoctor

USER root

RUN apk update 
RUN apk add apache2 apache2-utils multitail

RUN echo "include \${GITPOD_REPO_ROOT}/apache.conf" > /etc/apache2/apache2.conf \
 && echo ". \${GITPOD_REPO_ROOT}/apache.env.sh" > /etc/apache2/envvars


