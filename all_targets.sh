#!/bin/bash
cd "$(dirname "$(realpath "$0")")"

for target in {debian,centos}{,32}-docker; do
  echo $target/$1.sh
  $target/$1.sh
done
