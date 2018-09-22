class knot::zones {
        
	file { "/var/lib/knot":
		ensure => present,
		sourceselect => all,
		source => ["puppet:///modules/knot/${nodename}/var/lib/knot","/var/lib/knot "],
		recurse => true,
		notify   => Service['knot'],  
	}

}
