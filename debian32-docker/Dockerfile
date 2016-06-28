FROM 32bit/debian:jessie

RUN apt-get -q -y update && \
    apt-get -q -y install apt-transport-https && \
    apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54 && \
    (echo "deb https://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list) && \
    apt-get -q -y update && \
    apt-get -q -y install git reprepro dpkg-sig fakeroot curl crystal && \
    (curl -sSL https://rvm.io/mpapis.asc | gpg --import -) && \
    (curl -sSL https://get.rvm.io | bash -s stable --ruby) && \
    /bin/bash -lc "rvm use ruby --default && gem install bundler"

WORKDIR /mnt
CMD /bin/bash -l
