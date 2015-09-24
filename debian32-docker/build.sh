#!/bin/bash
set -e

source /usr/local/rvm/scripts/rvm

\cp -f /opt/crystal/embedded/bin/crystal crystal-linux-i686
bundle --jobs=8
git config --global user.name "Crystal packager"
git config --global user.email "crystal@example.org"
linux32 bundle exec omnibus build crystal-nightly
tar xf dist/repo_key.tar.gz -C /root/.gnupg/
dist/add-deb.sh pkg/crystal-nightly*i386*.deb
rm -f pkg/crystal-nightly*i386*
