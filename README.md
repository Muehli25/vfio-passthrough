# VFIO Configuration

System Configuration:

- Manjaro Linux 21.1.0 (Kernel 5.13.12) + Gnome 40
- CPU Ryzen 9 5950x
- MB MSI MAG x570 Tomahawk WiFi
- RAM 32GB 3733Mhz
- GPU Host: AMD Radeon RX 6600XT
- GPU Guest: nVidia Geforce RTX 2080

## Install hooks script

See this [Repo](https://github.com/PassthroughPOST/VFIO-Tools)

## Disable Sleep and hibernate while vm is running

See this [Script](gpu_passthrough/prepare_begin/disable_sleep.sh) for disable sleep and hibernate.

See this [Script](gpu_passthrough/release_end/enable_sleep.sh) for renable sleep and hibernate.

## Disable Screens and switch input

Using wayland it isn't possible to use xrandr so a small script called [gnome-randr.py](https://gitlab.com/Oschowa/gnome-randr).
Also this script needs the user session, so I use a small hack by ssh into my user and run the scripts.

Two of my screens don't like it if there is more than one video signal, so I disable the output.
After that with the usage of [ddcutil](https://www.ddcutil.com/) the input is switched for all displays.

After the VM is shutdown the screen input will be re-enabled and the input switched.

### ddcutil

Needs the module i2c-dev to be loaded.

- Can be done manually by running `sudo modprobe i2c-dev`
- or can be loaded at boot 
    - add `i2c-dev` to the file `/etc/modules-load.d/modules.conf`
