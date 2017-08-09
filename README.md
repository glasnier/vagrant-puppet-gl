# vagrant-puppet-gl

Vagrant configuration using Puppet to setup a lot of stuffs.

### Examples

    * vm-example: simple Ubuntu VM with basic softwares

### Vagrant

##### Vagrant basic commands

    $ vagrant up                         // to create and deploy the VM
    $ vagrant reload                     // if any changes, re-deploy
    $ vagrant reload --provision         // re-deploy with provisioning
    $ vagrant halt                       // to stop the VM
    $ vagrant ssh                        // to connect using SSH (captain obvious)
    $ vagrant destroy -f                 // to destroy the VM and all files
    $ vagrant box add bento/xenial64     // to add Vagrant boxes (OS...)


##### Installing Vagrant

From Ubuntu package manager: Vagrant v1.8.5 _!!!but this one seems buggy!!!_

    $ sudo apt-get install vagrant
    $ vagrant --version
    Vagrant 1.8.5

From Manual installation: _to get last version_

 Gist: https://gist.github.com/glasnier/18a01fcaf2be5f94a5c07410ffbb2768

    $ wget https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb
    $ sudo dpkg -i vagrant_1.9.7_x86_64.deb
    $ vagrant version
    Vagrant 1.9.7

To add a Vagrant box: __bento/xenial64__

    $ vagrant box add bento/xenial64


### Puppet

##### Puppet as provisioner

The Vagrant Puppet provisioner allows you to provision the guest using Puppet,
specifically by calling puppet apply, without a Puppet Master.


##### Installation Puppet

    $ sudo apt-get install puppet
    $ puppet --version
    3.8.5


### Links

+ https://www.vagrantup.com/docs/
+ https://app.vagrantup.com/boxes/search
+ https://app.vagrantup.com/puppetlabs
+ https://www.vagrantup.com/docs/provisioning/puppet_apply.html
+ https://docs.puppet.com/puppet/3.8/