# install ruby on rails
gem_package "rack" do
  version "1.5.1"
  action :remove
end

gem_package "rack" do
  version "1.4.0"
  actioin :install
end

gem_package "rails"

package "libsqlite3-dev"
