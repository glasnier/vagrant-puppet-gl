# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  host { 'hostmachine':
    ip => '192.168.0.1';
  }

  package { ['tree', 'emacs']:
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