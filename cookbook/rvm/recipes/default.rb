# install RVM
package "curl"

%w(libreadline-dev zlib1g-dev libssl-dev libxml2-dev libxslt1-dev libtool).each do |pkg|
  package pkg
end

execute "rvm-cleanup" do
  user "root"
  command "/usr/local/rvm/bin/rvm cleanup sources"
  action :nothing
end

bash "installing system-wide RVM stable" do
  user "root"
  code "bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)"
  not_if "test -e /usr/local/rvm/bin/rvm"
end