#!/bin/bash

cd "$(dirname "$(realpath "$0")")"
docker build -t crystal-omnibus-centos32 .
