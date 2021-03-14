#!/bin/sh

echo "Only BCM43602 WiFi is currently managed by this script."

echo "Checking to see if the Wifi device is found..."
# Example output: 07:00.0
nic_pci=$(lspci | grep BCM43602 | awk {'print $1'})

if [ -z "${nic_pci}" ]; then
    echo "No valid NIC found!"
    exit 1
else
    echo "Valid NIC found!"
fi

echo "Finding more information about the NIC."
# Example output: eth0
nic_name=$(grep -rl ${nic_pci} /sys/class/net/*/device/uevent | cut -d\/ -f 5)
# Example output: 40:22:d0:c9:ee:c1
nic_mac=$(ip link | grep -A 1 $nic_name | tail -n 1 | awk '{print $2}')

echo "Removing kernel module blacklists if they exist."
sudo sed -i "/blacklist apple_bl/d" /etc/modules-load.d/linux-gaming-stick.conf
sudo sed -i "/blacklist brcmfmac/d" /etc/modules-load.d/linux-gaming-stick.conf
sudo sed -i "/blacklist brcmutil/d" /etc/modules-load.d/linux-gaming-stick.conf

echo "Setting up BCM43602 configuration."
sudo mkdir -p /lib/firmware/brcm/
sudo cp ../files/brcmfmac43602-pcie.txt /lib/firmware/brcm/
sudo sed -i "s/macaddr=.*/macaddr=${nic_mac}/g" /lib/firmware/brcm/brcmfmac43602-pcie.txt
sudo modprobe -r brcmfmac brcmutil
sudo modprobe brcmfmac brcmutil
echo "Done!'"
