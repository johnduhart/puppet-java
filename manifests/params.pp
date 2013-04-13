# == Class: java::params
#
# This class manages parameters for the java Puppet class in this module.
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { java::params
#  }
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
class java::params {
    $home = '/usr/lib/jvm/java-6-sun'
    $location = 'http://ppa.launchpad.net/webupd8team/java/ubuntu'
    $package = 'oracle-java6-installer'
    $repository_name = 'webupd8team'
    $release = $::lsbdistcodename
    $repos = 'main'
    $key = 'EEA14886'
    $key_server = 'keyserver.ubuntu.com'
}
