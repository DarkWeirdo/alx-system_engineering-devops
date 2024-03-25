# This Puppet manifest configures the host by creating a file in /tmp and installing Flask version 2.1.0 using pip3.

# Create a file in /tmp
file { '/tmp/school':
  ensure  => 'file',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}

# Install Flask version 2.1.0 using pip3
exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => ['/usr/local/bin', '/usr/bin'],
  unless  => 'pip3 show Flask | grep "Version: 2.1.0"',
}
