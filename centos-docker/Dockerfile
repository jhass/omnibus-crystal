FROM centos:6

RUN curl http://dist.crystal-lang.org/rpm/setup.sh | bash
RUN yum install -q -y wget && wget -q http://people.centos.org/tru/devtools-2/devtools-2.repo -P /etc/yum.repos.d && echo "enabled=1" >> /etc/yum.repos.d/devtools-2.repo && yum install -q -y devtoolset-2-gcc devtoolset-2-gcc-c++ devtoolset-2-binutils && yum install -q -y crystal git rpm-build fakeroot curl createrepo xz rpm-sign expect which tar
RUN (curl -sSL https://rvm.io/mpapis.asc | gpg --import -) && \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN /bin/bash -lc "rvm use ruby --default && gem install bundler"

WORKDIR /mnt
CMD /bin/bash -l
