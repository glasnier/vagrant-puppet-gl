# vagrant-puppet-gl

Vagrant configuration using Puppet to setup a lot of stuffs.


### Examples

    * vm-example: simple VM VirtualBox based on Ubuntu with basic softwares


### Vagrant

Vagrant is a tool for building and managing virtual machine environments in a
single workflow.

Vagrant is licensed under the MIT License.


##### Vagrant basic commands

    $ vagrant up                         // to create and deploy the VM
    $ vagrant reload                     // if any changes, re-deploy
    $ vagrant reload --provision         // re-deploy with provisioning
    $ vagrant halt                       // to stop the VM
    $ vagrant ssh                        // to connect using SSH (captain obvious)
    $ vagrant destroy -f                 // to destroy the VM and all files
    $ vagrant box add bento/xenial64     // to add Vagrant boxes (OS...)
    $ vagrant status                     // to see VMs status (captain obvious)


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

Puppet is licensed under the Apache License, Version 2.0 (the "License").


##### Installing Puppet

    $ sudo apt-get install puppet
    $ puppet --version
    3.8.5


### VirtualBox

##### About VirtualBox

VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for
enterprise as well as home use. It is freely available as Open Source Software.

VirutalBox is licensed under the GNU General Public License (GPL) version 2.


##### Installing VirtualBox

    $ sudo apt-get install virutalbox


### Links

+ https://www.vagrantup.com/docs/
+ https://app.vagrantup.com/boxes/search
+ https://app.vagrantup.com/puppetlabs
+ https://www.vagrantup.com/docs/provisioning/puppet_apply.html
+ https://docs.puppet.com/puppet/3.8/