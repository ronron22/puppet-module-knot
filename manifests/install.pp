class knot::install (

	$knot_packages = hiera('knot_packages'),

	) {

	package { $knot_packages:
		ensure  => present,
	}

}
