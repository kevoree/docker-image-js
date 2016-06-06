FROM        node
MAINTAINER  Maxime Tricoire <max.tricoire@gmail.com> (@maxleiko)

WORKDIR     /

RUN         npm i -g kevoree-nodejs-runtime@5.6.0

ENTRYPOINT  ["kevoreejs"]
