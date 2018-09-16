class knot::zones (
        $nodename = hiera('nodename'),
    ) {
        include knot::install
        include knot::services
        file { "/var/lib/knot":
          ensure => present,
          sourceselect => all,
          source => ["puppet:///modules/knot/${nodename}/var/lib/knot","/var/lib/knot "],
          recurse => true,
           #notify   => Service['knot'],  
        }
}
