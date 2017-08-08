# vagrant-puppet-gl
Vagrant configuration using Puppet to setup a lot of stuffs.


Vagrant commands
----------------

vagrant up
vagrant reload
vagrant reload --provision
vagrant halt
vagrant ssh
vagrant destroy -f


Installing Vagrant
------------------

$ sudo apt-get install vagrant
$ vagrant box add bento/xenial64


Puppet
------

The Vagrant Puppet provisioner allows you to provision the guest using Puppet,
specifically by calling puppet apply, without a Puppet Master.

$ sudo apt-get install puppet

https://www.vagrantup.com/docs/provisioning/puppet_apply.html


Links
-----

https://app.vagrantup.com/boxes/search
https://app.vagrantup.com/puppetlabs
