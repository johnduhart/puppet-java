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
  $location = ''
}
