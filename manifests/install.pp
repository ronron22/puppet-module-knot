class knot::install (
        $nodename = hiera('nodename'),
    ) {
        package { 'knot':
          ensure  => present,
        }
        file { '/etc/knot/knot.conf':
          ensure  => present,
          content => file("knot/${nodename}/etc/knot/knot.conf"),
        }
}
