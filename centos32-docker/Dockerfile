FROM toopher/centos-i386:centos6

RUN (curl https://dist.crystal-lang.org/rpm/setup.sh | bash) && \
    linux32 yum install -q -y wget && \
    wget -q http://people.centos.org/tru/devtools-2/devtools-2.repo -P /etc/yum.repos.d && \
    (echo "enabled=1" >> /etc/yum.repos.d/devtools-2.repo) && \
    linux32 yum install -q -y devtoolset-2-gcc devtoolset-2-gcc-c++ devtoolset-2-binutils && \
    linux32 yum install -q -y crystal git rpm-build fakeroot curl createrepo xz rpm-sign expect which tar && \
    (curl -sSL https://rvm.io/mpapis.asc | gpg --import -) && \
    (curl -sSL https://get.rvm.io | linux32 bash -s stable --ruby) && \
    /bin/bash -lc "rvm use ruby --default && gem install bundler"

WORKDIR /mnt
CMD /bin/bash -l
