#!/bin/bash
echo "Running entrypoint script"

# Configure network interface for macvlan with DHCP
echo "Configuring network interface..."
dhclient eth0
ip addr show eth0

source /QLC/qt_export.sh
qlcplus -w -o /QLC/qlc.qxw -p