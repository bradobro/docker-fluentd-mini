# fluentd-mini Docker Container

The [fluent/fluentd](https://github.com/fluent/fluentd-docker-image) image weighs in at 495mb (Oct 2015). For something I plan to run on most machines in my CoreOS cluster, I wanted to see if I could trim that a bit by using Alpine linux as the base image.

First experiments look good: 40mb with just fluentd installed.
