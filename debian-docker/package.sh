#!/bin/bash

cd "$(dirname "$(realpath "$0")")/.."
docker run --rm -v "$(pwd)":/mnt crystal-omnibus-debian debian-docker/build.sh
