# == Class: users
#
# This class manages user configuration for all Vagrant boxes.
#
# Parameters: none
#
# Actions: none
#
# Requires: nothing
#
class users {
  user { 'gil':
    ensure           => present,
    managehome       => 'true',
    comment          => 'Gilles Lasnier',
    groups           => ['adm', 'dialout', 'cdrom', 'sudo', 'dip', 'plugdev', 'lpadmin'],
    home             => '/home/gil',
    shell            => '/bin/bash',
    uid              => '1001',
    password         => '$6$MLZYHsdS$jnfqHHkGxx1AwXAGI22hVH4mpsP8DEpFTD1htMIsTlx7t.gbFfOIzhC8rl/5dRgPtzpwXkOmBT9vmgRsGHfWh1',
    password_max_age => '99999',
    password_min_age => '0',
  }

  file { "/home/gil":
    ensure => directory,
    owner  => 'gil',
    group  => 'gil',
    mode   => '0755',
  }
}