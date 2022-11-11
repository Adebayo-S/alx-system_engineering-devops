# Fix 24 roo many requests

exec {'fix limit':
  command  => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  before   => Exec['restart'],
}

exec {'restart nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
