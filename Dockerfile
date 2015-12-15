FROM drydock/u12:prod

ADD . /u12nod

RUN /u12nod/install.sh
