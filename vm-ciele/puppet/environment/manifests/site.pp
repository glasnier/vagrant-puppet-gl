# create new run stages to ensure certain modules are included first
stage { 'pre':
  before  => Stage['main'],
}

stage { 'post':
  require => Stage['main'],
}

# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
   stage => 'pre';
}

# set the main user as administrator
$user = "ciele"

class { 'users::admin':
   stage => 'pre',
   username => $user
}

class { 'directory_tree':
   stage => 'pre',
   username => $user
}

include baseconfig
