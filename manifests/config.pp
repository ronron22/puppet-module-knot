class knot::config (

	$knot_config_file = hiera('knot_config_file'),

	) {

	file { $knot_config_file:
		ensure  => present,
		content => file("knot/${nodename}/etc/knot/knot.conf"),
		notify   => Service[$service_name],  
	}

}
