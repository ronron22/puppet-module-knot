class knot::install {

	file { $knot_config_file:
		ensure  => present,
		content => file("knot/${nodename}/etc/knot/knot.conf"),
		notify   => Service[$service_name],  
	}

}
