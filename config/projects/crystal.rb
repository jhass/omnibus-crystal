name 'crystal'
maintainer 'Juan Wajnerman'
homepage 'http://crystal-lang.org/'
conflict 'crystal-nightly'

install_dir '/opt/crystal'
build_version do
  source :version, from_dependency: 'crystal'
end
build_iteration 1

override :crystal, version: "0.8.0"

dependency 'crystal'
#dependency 'tgz_package' if mac_os_x? || centos?

exclude '\.git*'
exclude 'bundler\/git'

package :deb do
  license "Apache-2.0"
end

package :rpm do
  license "Apache-2.0"
end
