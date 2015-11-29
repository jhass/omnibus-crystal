#!/bin/bash

cd "$(dirname "$(realpath "$0")")"
docker build --no-cache -t crystal-omnibus-debian32 .
