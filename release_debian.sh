# 1. copy the previous version of the compiler to crystal-linux
rvmsudo bash
cd /vagrant
bundle
bundle exec omnibus build crystal

# Point 6
# debian
rvmsudo bash
cd /vagrant
sudo ./dist/add-deb.sh pkg/crystal_0.18.7-1_amd64.deb

# debian32
rvmsudo bash
cd /vagrant
sudo ./dist/add-deb.sh pkg/crystal_0.18.7-1_i386.deb
