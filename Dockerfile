FROM        node
MAINTAINER  Maxime Tricoire <max.tricoire@gmail.com> (@maxleiko)

WORKDIR     /

RUN         npm i -g kevoree-nodejs-runtime@3.0.5

ENTRYPOINT  ["kevoreejs"]
