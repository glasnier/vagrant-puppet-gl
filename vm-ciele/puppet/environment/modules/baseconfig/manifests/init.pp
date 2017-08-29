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

  host { 'vagrant-vm-ciele':
    ip => '192.168.10.190';
  }

  #package { [ 'tree', 'emacs', 'subversion', 'cmake', 'git' ]:
  package { ['tree']:
    ensure => present;
  }
}