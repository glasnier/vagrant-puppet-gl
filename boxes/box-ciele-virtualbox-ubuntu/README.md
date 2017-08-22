# How to setup your custom Vagrant Boxes server with versioned, self-packages vagrant boxes

## Description

This folder contains all the information and materials to build the
CIELE VirtualBox Vagrant box.

This box is based on Ubuntu Server 16.01.01 LTS.


## Requirements

Install the tools:
  * Vagrant v1.9.7 (>=) from https://dl.bintray.com/mitchellh/vagrant/
  * VirtualBox v5.0.24 (>=) from http://download.virtualbox.org/virtualbox/

You may see the instructions here: [README](https://github.com/glasnier/vagrant-puppet-gl/blob/master/README.md)

Note:
  * Choose the installer that fits your system.


## Usage

```bash
$ cd ~/workstation/repositories
$ git clone https://github.com/glasnier/vagrant-puppet-gl.git
$ cd vm-ciele
$ vagrant up
```


## How to get the CIELE Vagrant boxes ?

CIELE Vagrant boxes are located at: http://<ciele-r&d>/vagrant-boxes/


## How to setup a custom Vagrant box ?

Please, look at the interesting and complete tutorial from 'hollodotme': [Vagrant box tutorial](https://github.com/glasnier/Helpers/blob/master/Tutorials/vagrant/self-hosted-vagrant-boxes-with-versioning.md)


## Interesting links

 * https://www.vagrantup.com/docs/virtualbox/boxes.html
 * https://www.vagrantup.com/docs/boxes/base.html
 * https://www.vagrantup.com/docs/boxes/format.html
 * https://github.com/mitchellh/vagrant/tree/master/keys
 * http://download.virtualbox.org/virtualbox