FROM debian:8

RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54 && echo "deb http://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list
RUN apt-get update -q -y && apt-get -q -y  install git reprepro dpkg-sig fakeroot curl crystal
RUN (curl -sSL https://rvm.io/mpapis.asc | gpg --import -) && \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN /bin/bash -lc "rvm use ruby --default && gem install bundler"

WORKDIR /mnt
CMD /bin/bash -l
