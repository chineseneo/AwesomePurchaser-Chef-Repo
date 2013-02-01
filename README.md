Awesome Purchaser Chef Repo
=================

HowTo
-----

1. Use `package.sh` to pack up this repo to `chef-solo.tar.gz`
2. Scp the package to the server
3. Untar the package
4. Run install.sh under root:
`sudo ./install.sh` or `sudo su; ./install.sh`
5. Add Rubygems to PATH:
`echo 'export PATH=$PATH:/var/lib/gems/1.8/bin' >> ~/.bash_profile; . ~/.bash_profile`
