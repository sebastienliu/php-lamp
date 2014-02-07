class mysql {
	$mysqlpwd = "asdfQWER"
	
	#install mysql server
	package {"mysql-server":
		ensure => present,
		require => Exec["apt-get update"]
	}
	
	#start mysql service
	service {"mysql":
		ensure => running,
		require => Package["mysql-server"],
	}
	
	#set mysql root password
	exec {"set-mysql-password":
		unless => "mysqladmin -uroot -p$mysqlpwd status",
		command => "mysqladmin -uroot password $mysqlpwd",
		require => Service["mysql"],
	}
}