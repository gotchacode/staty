#! /bin/bash 

# This installs pastebinit to provide a web interface for System Information 

./makeconf.sh
sudo apt-get -y install pastebinit hddtemp

#This installs the necassary modules/dependancies

sudo python setup.py install


