# install flask from pip3

$package = 'flask'

exec { 'apt-get update':
  command => '/usr/bin/apt-get update'
}

package { 'python3-pip':
  ensure  => 'installed'
  require => Exec['apt-get update']
}

exec { 'install flask':
  command => '/usr/bin/pip3 install flask==2.1.0'
}

