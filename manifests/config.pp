class knot::install {

	file { '/etc/knot/knot.conf':
		ensure  => present,
		content => file("knot/${nodename}/etc/knot/knot.conf"),
		notify   => Service['knot'],  
	}

}
