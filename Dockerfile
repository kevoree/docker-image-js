FROM        mhart/alpine-node:6.9.1
MAINTAINER  Maxime Tricoire <max.tricoire@gmail.com> (@maxleiko)

WORKDIR     /root


COPY        ./config.json /root/.kevoree/config.json
COPY        ./start.sh /root/start.sh

RUN         chmod +x /root/start.sh

ENTRYPOINT  ["/root/start.sh"]
CMD         ["start"]
