#!/bin/bash

VM_NAME="vagrant-vm-ciele"

vagrant halt ${VM_NAME}
vagrant destroy -f ${VM_NAME}
vagrant up

exit $?
