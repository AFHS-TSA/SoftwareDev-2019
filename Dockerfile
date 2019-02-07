FROM beevelop/cordova:latest

MAINTAINER Jason Long

ADD . /software

WORKDIR /software

RUN yes | $ANDROID_HOME/tools/bin/sdkmanager "build-tools;25.0.2"
RUN cordova prepare && cordova build android
