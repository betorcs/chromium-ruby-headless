FROM alpine

RUN apk --no-cache update
RUN apk --no-cache add chromium \
    chromium-chromedriver \
    ruby \
    ruby-rdoc \
    ruby-dev \
    make \
    alpine-sdk \
    zlib-dev \
    bash \
    mesa-gles

RUN mkdir -r /usr/lib/chromium/swiftshader
RUN ln -s /usr/lib/libGLESv2.so.2 /usr/lib/chromium/swiftshader/libGLESv2.so

RUN gem install bundler

ENV CHROMIUM_BROWSER_PATH /usr/bin/chromium-browser
ENV CHROMEDRIVER_PATH /usr/bin/chromedriver

WORKDIR /var
