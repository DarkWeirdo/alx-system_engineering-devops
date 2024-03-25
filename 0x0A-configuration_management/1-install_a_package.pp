# This Puppet manifest installs Flask version 2.1.0 using pip3.

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => 'present',
}

# Install Flask version 2.1.0
exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin:/bin',
  unless  => 'pip3 show Flask | grep "Version: 2.1.0"',
  require => Package['python3-pip'],
}
