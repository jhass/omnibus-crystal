#!/usr/bin/env bash
apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54
echo "deb http://nightly.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal-nightly.list
apt-get update
