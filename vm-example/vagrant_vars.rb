# -*- mode: ruby -*-
# vi: set ft=ruby :

# VagrantVars
#
#   Configuration variables for Vagrant file.
#

module VagrantVars
  $vm_hostname          = 'vagrant-vm-example-ub16.04'

  $vm_box               = 'bento/ubuntu-16.04'
  $vm_box_url           = 'https://vagrantcloud.com/bento/boxes/ubuntu-16.04/versions/2.3.8/providers/virtualbox.box'

  $ip_address           = '192.168.0.191'
  $host_port_to_forward = 6998

  $enable_gui           = true
  $number_of_cpus       = 1     # number of CPUS
  $amount_of_ram        = 512   # amount of ram       (MBytes)
  $video_ram            = 64    # amount of video ram (MBytes)
end
