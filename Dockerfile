# Trying to make a smaller fleetd build

FROM alpine:latest
MAINTAINER Brad Olson <brad.olson@movedbylight.com>

RUN apk update && apk upgrade && \
  apk add ruby-json ruby-irb ruby-nokogiri ruby-thread_safe ruby-tzinfo && \
  apk add build-base ruby-dev && \
  gem install --no-document fluentd && \
  apk del build-base ruby-dev && \
  rm -rf /root/.gem

COPY CUSTOM/* ./ 
#RUN sh container_files/build_fluentd.sh
#RUN apk add build-base ruby-dev 
#RUN gem install --no-document fluent


