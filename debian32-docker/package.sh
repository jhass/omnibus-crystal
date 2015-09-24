#!/bin/bash

cd "$(dirname "$(realpath "$0")")/.."
docker run --rm -v "$(pwd)":/mnt crystal-omnibus-debian32 debian32-docker/build.sh
