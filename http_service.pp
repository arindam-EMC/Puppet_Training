package {  'httpd': 
  ensure => 'installed'
}

service { 'httpd':
  ensure => 'running',
  enable=>'true'
}

$http_config= '<h1>Hello to the world of Puppet<h1>'
file { '/var/www/index.html':
    ensure    => 'file',
      content => $http_config,}
      



