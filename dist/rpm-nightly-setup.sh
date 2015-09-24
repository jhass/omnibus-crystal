#!/usr/bin/env bash
cat > /etc/yum.repos.d/crystal-nightly.repo <<END
[crystal]
name = Crystal
baseurl = http://nightly.crystal-lang.org/rpm/
gpgcheck=0
END
