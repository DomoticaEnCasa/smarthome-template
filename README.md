# Smarthome template

Template to provision a smarthome system using Zigbee, Zigbee2mqtt and Home Assistant.
Currently, it is fully compatible with an installation in a Raspberry Pi 4.

**_Warning_**

This is a very first version of the system, and it is currently a proof of concept.

## Requirements
### Hardware
- Raspberry Pi 4.
- Zigbee hub/coordinator/bridge compatible with Zigbee2mqtt 

_I use a Texas instruments LAUNCHXl-cc26x2r1, which is currently one of the best devices compatible with Zigbee 3.0, and a CC2531 USB stick should work as well._

### Software
#### Raspbery Pi
- [Raspbian 10](https://www.raspberrypi.org/downloads/raspbian/)
- I recommend you configure a static ip for the Raspberry Pi.

#### Build machine
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Python 3
- Make (optional)

## Setting up
Install software requirements in your build machine:
```bash
pip install -r requirements.txt
```

Set your custom variables in `/group_vars/all/all.yml` and the other group_vars files. 
Notice that you have several `.dist` files in the same folder as templates.

You will have to replace all `0x00158...` addresses with your own ones.

## Installation
There is a Makefile with a target called `provision` which runs the `installation` script.
```bash
make provision
```

If you don't want to use Make, you can run the command directly in your terminal:
```bash
ANSIBLE_CONFIG=ansible.cfg time ansible-playbook --ask-pass -i hosts playbook.yml
```
