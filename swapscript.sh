#!/bin/sh
echo "A simple script to add temporary swap space"
echo "How much swap to add? (10 gigabytes = 10G)"
read swapamount
sudo fallocate -l $swapamount /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
echo "Swap space of $swapamount added, this is removed on reboot."
