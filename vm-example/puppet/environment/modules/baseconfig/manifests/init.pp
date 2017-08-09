# == Class: baseconfig
#
# This class manages initial configuration tasks for all Vagrant boxes.
#
# Parameters: none
#
# Actions: none
#
# Requires: nothing
#
class baseconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  host { 'vagrant-vm-example-ubuntu-16-04-box':
    ip => '192.168.0.1';
  }

#  package { [ 'tree', 'emacs', 'subversion', 'cmake' ]:
  package { ['tree']:
    ensure => present;
  }

  file {
    '/home/vagrant/dlrowolleh':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0755',
      source => 'puppet:///modules/baseconfig/dlrowolleh';
  }
}