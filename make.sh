#!/bin/sh

set -x

NAME='kindrid/fluentd-mini'
VERSION=`cat CUSTOM/VERSION`

docker build --tag="$NAME:$VERSION" .




