#!/bin/sh
DIR=`dirname $0`
dpkg-sig --sign builder -m 359365D8 $1
reprepro --ask-passphrase -V --confdir $DIR/apt-conf --basedir $DIR/apt includedeb crystal $1
