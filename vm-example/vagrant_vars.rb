# -*- mode: ruby -*-
# vi: set ft=ruby :

# VagrantVars
#
#   Configuration variables for Vagrant file.
#

module VagrantVars
  # box
  $vm_box               = 'bento/ubuntu-16.04'
  $vm_box_url           = 'https://vagrantcloud.com/bento/boxes/ubuntu-16.04'

  # hostname
  $vm_hostname          = 'vagrant-vm-example'

  # network
  $vm_ip_address        = '192.168.10.191'
  #$vm_ip_address        = '192.168.0.191'
  $host_port_tft        = 6998  # host port to forwared guest vm port 80 to

  # gui
  $enable_gui           = true  # enable display mode

  # virtual hardware
  $number_of_cpus       = 1     # number of virtual CPUs
  $amount_of_ram        = 512   # amount of virtual ram           (MBytes)
  $video_ram            = 64    # amount of graphical video memory (MBytes)
end
