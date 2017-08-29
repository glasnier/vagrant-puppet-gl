# create new run stages to ensure certain modules are included first
stage { 'pre':  before  => Stage['main'] }
stage { 'post': require => Stage['main'] }

# add the baseconfig module to the new 'pre' run stage
class {
  'baseconfig': stage => 'pre';
}

# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

class { 'users::simple':
  stage => 'pre',
  username => 'ciele2'
}

class { 'users::admin':
  stage => 'pre',
  username => 'ciele'
}

include baseconfig
