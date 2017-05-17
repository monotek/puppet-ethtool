class ethtool::install {
  if  $::ethtool::ensure_installed == true {
    $ensure = 'present'
  }
  else{
    $ensure = 'absent'
  }

  ensure_packages(['ethtool'],{'ensure' => $ensure})

  if defined(Package['ethtool']) {
    Package['ethtool'] -> Ethtool<| |>
  }
}
