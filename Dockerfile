FROM        mhart/alpine-node:6.9.1
MAINTAINER  Maxime Tricoire <max.tricoire@gmail.com> (@maxleiko)

WORKDIR     /root

RUN         apk add --no-cache mosquitto && \
            npm i -g kevoree-cli && \
            npm cache clean

COPY        ./config.json /root/.kevoree/config.json
COPY        ./start.sh /root/start.sh

RUN         chmod +x /root/start.sh

EXPOSE      1883

ENTRYPOINT  ["/root/start.sh"]
CMD         ["start"]
