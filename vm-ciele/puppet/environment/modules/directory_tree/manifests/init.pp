# == Class: directory_tree
#
# This class manages a directory tree creation.
#
# Parameters:
#  $username: name of the user to create, default value is 'ciele'
#
#
# Actions: none
#
# Requires: nothing
#
class directory_tree (
  $username = 'ciele'
) {
  # assign a variable to use directories in the resource
  $whisper_dirs = [
                    "/home/${username}/workstation",
                    "/home/${username}/workstation/compilers",
                    "/home/${username}/workstation/documentation",
                    "/home/${username}/workstation/projects",
                    "/home/${username}/workstation/repositories",
                    "/home/${username}/workstation/scripts",
                    "/home/${username}/workstation/tools",
                  ]

  # spell out "magic" iteration
  $whisper_dirs.each |$path| {
    file { $path:
      ensure => directory,
      owner  => "${username}",
      group  => "${username}",
      mode   => '0755',
    }
  }

  file { "/home/${username}/workstation/README":
    ensure => file,
    owner  => "${username}",
    group  => "${username}",
    mode   => '0755',
    source => 'puppet:///modules/directory_tree/README';
  }
}
