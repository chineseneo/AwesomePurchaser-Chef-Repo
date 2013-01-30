chef_binary=`which chef-solo`
knife_binary=`which knife`

if [ "$chef_binary" == "" ] ; then
    sudo apt-get update
    sudo apt-get install chef
    echo "export PATH=/var/lib/gems/1.8:$PATH" >> ~/.bash_profile
    . ~/.bash_profile
fi
