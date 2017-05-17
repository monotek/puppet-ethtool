# == Class: ethtool
#
# Installs ethtool so the ethtool type can function.
#
# === Parameters
#
# [*ensure_installed*]
#  Boolean. If true, will ensure that the right ethtool package
#  is installed on the system.
#
class ethtool (
  Boolean $ensure_installed = $::ethtool::params::ensure_installed
) inherits ethtool::params {

  include ethtool::install

}
