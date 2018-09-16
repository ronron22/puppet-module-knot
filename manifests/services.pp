class knot::services (
        $enable = hiera('knot_service_enable'),
    ) {
        if $enable {
            service { 'knot':
              ensure  => running,
              enable  => true,
              restart => 'systemctl reload knot',
              require => File['/etc/knot/knot.conf'],
            } 
        } else {
            service { 'knot':
              ensure  => stopped,
              enable  => true,
              restart => 'systemctl reload knot',
              require => File['/etc/knot/knot.conf'],
            }
        }
}
