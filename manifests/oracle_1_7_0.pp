class java::oracle_1_7_0 (
    $package = $java::oracle_1_7_0::params::package,
    $home    = $java::oracle_1_7_0::params::home) inherits java::oracle_1_7_0::params {
    include oracle

    package { $package:
        ensure  => installed,
        require => [Class['oracle'], Exec["${package}accepted-oracle-license-v1-1"]]
    }

    exec { "${package}accepted-oracle-license-v1-1":
        command => "/bin/echo ${package} shared/accepted-oracle-license-v1-1 select true | /usr/bin/sudo /usr/bin/debconf-set-selections",
        unless  => "/usr/bin/debconf-show ${package} | grep 'shared/accepted-oracle-license-v1-1: true'",
    }
}
