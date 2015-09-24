#!/bin/bash

cd "$(dirname "$(realpath "$0")")/.."
docker run --rm -v "$(pwd)":/mnt crystal-omnibus-centos centos-docker/build.sh
