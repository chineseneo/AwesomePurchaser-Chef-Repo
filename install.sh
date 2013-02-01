chef_binary=`which chef-solo`

apt-get update
if [ "$chef_binary" = "" ] ; then
    apt-get -q -y install chef
fi

mkdir -p /tmp/chef-solo
mv cookbook /tmp/chef-solo/
mv chef-solo.rb /tmp/chef-solo/
mv chef-solo.json /tmp/chef-solo/
cd /tmp/chef-solo
chef-solo -c chef-solo.rb -j chef-solo.json