FROM alpine

RUN apk --no-cache add update \
    chromium \
    chromium-chromedriver \
    ruby \
    ruby-rdoc \
    ruby-dev \
    make \
    alpine-sdk \
    zlib-dev \
    bash

RUN gem install bundler

ENV CHROMIUM_BROWSER_PATH /usr/bin/chromium-browser
ENV CHROMEDRIVER_PATH /usr/bin/chromedriver

WORKDIR /var
