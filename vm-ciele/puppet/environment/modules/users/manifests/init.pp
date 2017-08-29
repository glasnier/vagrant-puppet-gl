# == Class: users::simple
#
# This class manages simple user configuration for all Vagrant boxes.
#
# Parameters:
#  $username: name of the user to create
#  $userpasswd: password of the created user (default = 'vagrant')
#
# Actions: none
#
# Requires: nothing
#
class users::simple
(
  $username = 'cielesimple',
  $userpasswd = '$6$MLZYHsdS$jnfqHHkGxx1AwXAGI22hVH4mpsP8DEpFTD1htMIsTlx7t.gbFfOIzhC8rl/5dRgPtzpwXkOmBT9vmgRsGHfWh1'
)
{
  user {
    $username:
     name             => "$username",
     ensure           => 'present',
     managehome       => 'true',
     comment          => '$username (admin)',
     groups  => [ 'dialout', 'plugdev' ],
     home             => "/home/$username",
     shell            => '/bin/bash',
     uid              => '1002',
     password         => "$userpasswd",
     password_max_age => '99999',
     password_min_age => '0',
  }

  file {
    "/home/$username":
     ensure => 'directory',
     owner  => "$username",
     group  => "$username",
     mode   => '0755'
  }
}

# == Class: users::admin
#
# This class manages admin user configuration for all Vagrant boxes.
#
# Parameters:
#  $username: name of the user to create
#  $userpasswd: password of the created user (default = 'vagrant')
#
# Actions: none
#
# Requires: nothing
#
class users::admin
(
  $username = 'ciele',
  $userpasswd = '$6$MLZYHsdS$jnfqHHkGxx1AwXAGI22hVH4mpsP8DEpFTD1htMIsTlx7t.gbFfOIzhC8rl/5dRgPtzpwXkOmBT9vmgRsGHfWh1'
)
{
  user {
    $username:
     name             => "$username",
     ensure           => 'present',
     managehome       => 'true',
     comment          => '$username (admin)',
     groups           => ['adm', 'dialout', 'cdrom', 'sudo', 'dip', 'plugdev', 'lpadmin'  ],
     home             => "/home/$username",
     shell            => '/bin/bash',
     uid              => '1001',
     #gid              => '1001',
     password         => "$userpasswd",
     password_max_age => '99999',
     password_min_age => '0',
  }

  file {
    "/home/$username":
     ensure => 'directory',
     owner  => "$username",
     group  => "$username",
     mode   => '0755'
  }
}