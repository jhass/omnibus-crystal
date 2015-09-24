#!/bin/bash
set -e

source /usr/local/rvm/scripts/rvm

\cp -f /opt/crystal/embedded/bin/crystal crystal-linux-x86_64
bundle --jobs=8
git config --global user.name "Crystal packager"
git config --global user.email "crystal@example.org"
scl enable devtoolset-2 'bash -lc "bundle exec omnibus build crystal-nightly"'
dist/add-rpm.sh pkg/crystal-nightly*x86_64*.rpm
rm -f pkg/crystal-nightly*x86_64*
