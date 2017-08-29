# -*- mode: ruby -*-
# vi: set ft=ruby :

# VagrantVars
#
#   Configuration variables for Vagrant file.
#

module VagrantVars
  # box
  $vm_box               = 'ciele/ubuntu-16.04'
  $vm_box_url           = 'http://192.168.10.68/vagrant-boxes/vagrant-box-ubuntu_16_04_lts.json'

  # hostname
  $vm_hostname          = 'vagrant-vm-ciele'

  # network
  $vm_bridge_nw_itf     = 'enp0s31f6'
  $vm_ip_address        = '192.168.10.190'
  $host_port_tft        = 6998  # host port to forwared guest vm port 80 to

  # gui
  $enable_gui           = true  # enable display mode

  # virtual hardware
  $number_of_cpus       = 1     # number of virtual CPUs
  $amount_of_ram        = 512   # amount of virtual ram           (MBytes)
  $video_ram            = 64    # amount of graphical video memory (MBytes)
end
