#!/bin/bash

## sleep for 5 seconds to allow windows to catch the displays
sleep 5

## switch monitor input to guest
/home/mhlnstdt/Documents/VFIO/gpu_passthrough/started_begin/switch_to_guest.sh &>> /var/log/libvirt/custom_hooks.log