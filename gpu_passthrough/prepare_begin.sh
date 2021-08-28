#!/bin/bash

## disable auto sleep and hibernate
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/prepare_begin/disable_sleep.sh &>> /var/log/libvirt/custom_hooks.log

## disable screens
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/prepare_begin/disable_screens_ssh.sh &>> /var/log/libvirt/custom_hooks.log