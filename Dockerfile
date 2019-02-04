FROM beevelop/android-nodejs

MAINTAINER Jason Long

ENV CORDOVA_VERSION 8.1.1

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
