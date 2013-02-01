chef_binary=`which chef-solo`
knife_binary=`which knife`

apt-get update
if [ "$chef_binary" == "" ] ; then
    apt-get install chef
    echo "export PATH=/var/lib/gems/1.8:$PATH" >> ~/.bash_profile
    . ~/.bash_profile
fi

mkdir -p /tmp/chef-solo
mv cookbook /tmp/chef-solo/
mv chef-solo.rb /tmp/chef-solo/
mv chef-solo.json /tmp/chef-solo/
cd /tmp/chef-solo
chef-solo -c chef-solo.rb -j chef-solo.json