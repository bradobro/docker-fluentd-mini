#!/bin/bash

apk update && apk upgrade 
apk add ruby-json ruby-irb 
apk add ruby-nokogiri ruby-thread_safe ruby-tzinfo
apk add build-base ruby-dev
gem install fluentd --no-document
apk del build-base ruby-dev
fluentd -s

