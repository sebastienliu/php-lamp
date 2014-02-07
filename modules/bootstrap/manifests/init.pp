class bootstrap {
	group {"puppet":
		ensure => 'present'
	}
	
	# ensure local yum repo cache is up to date before starting
	exec {'apt-get update':
		command => '/usr/bin/apt-get update'
	}
}