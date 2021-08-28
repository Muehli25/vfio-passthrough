#!/bin/bash

## enable auto sleep and hibernate
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/release_end/enable_sleep.sh &>> /var/log/libvirt/custom_hooks.log

## switch monitor input to host
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/release_end/enable_screens_ssh.sh &>> /var/log/libvirt/custom_hooks.log

## sleep 5 seconds
sleep 5

## switch monitor input to host
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/release_end/switch_to_host.sh &>> /var/log/libvirt/custom_hooks.log