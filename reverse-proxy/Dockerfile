FROM nginx:1.13

MAINTAINER Devis Lucato (https://github.com/dluc)

LABEL Tags="Azure,IoT,Solutions,Proxy,nginx"

ARG user=pcsuser

RUN useradd -m -s /bin/bash -U $user

COPY ./content/ /app
RUN chown -R $user.$user /app
WORKDIR /app

RUN apt-get update \
 && apt-get install sudo \
 && echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
 && mkdir /app/config/ && mv /app/nginx.conf /app/config/

# TODO: remove port 80
EXPOSE 80 443
VOLUME ["/app/certs", "/app/config"]

ENTRYPOINT ["/bin/bash", "/app/run.sh"]

USER $user
