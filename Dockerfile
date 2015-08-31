FROM gcr.io/dry-dock/u12:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
