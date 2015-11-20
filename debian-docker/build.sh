#!/bin/bash
set -e

source /usr/local/rvm/scripts/rvm

rm -f pkg/crystal-nightly*amd64*
\cp -f /opt/crystal/embedded/bin/crystal crystal-linux-x86_64
bundle --jobs=8
git config --global user.name "Crystal packager"
git config --global user.email "crystal@example.org"
bundle exec omnibus build crystal-nightly
tar xf dist/repo_key.tar.gz -C /root/.gnupg/
dist/add-deb.sh pkg/crystal-nightly*amd64*.deb
