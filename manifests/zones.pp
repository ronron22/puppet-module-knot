class knot::zones (

	$nodename = hiera('nodename')
	$service_name   = hiera('service_name'),
  $knot_zones_directory = hiera('knot_zones_directory')
        
	) {
 
	file { $knot_zones_directory":
		ensure => present,
		sourceselect => all,
		source => ["puppet:///modules/knot/${nodename}/var/lib/knot","/var/lib/knot "],
		recurse => true,
		notify   => Service[$service_name],  
	}

}
