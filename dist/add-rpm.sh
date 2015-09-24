#!/bin/sh
DIR=`dirname $0`
#echo "%_signature gpg" > ~/.rpmmacros
#echo "%_gpg_name 02C2C81D" >> ~/.rpmmacros
#$DIR/rpm-sign.exp --resign $1
mkdir -p $DIR/rpm
cp $1 $DIR/rpm
createrepo $DIR/rpm
#gpg --batch --yes --detach-sign --armor -u 02C2C81D $DIR/rpm/repodata/repomd.xml
