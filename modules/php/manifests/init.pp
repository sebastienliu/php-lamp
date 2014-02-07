class php {
	$packages = [
		"php5",
		"php5-common",
		"php5-cli",
		"php5-mysql",
		"php-pear",
		"php5-dev",
		"php5-gd",
		"php5-mcrypt",
		"php5-fpm",
		"php5-xmlrpc",
		"php-soap"
	]
	
	package {$packages:
		ensure => present,
		require => Exec["apt-get update"]
	}
}