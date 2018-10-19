#!/bin/bash

#####################################################################################################################
#    update_dns.sh   :  A simple script to update DNS for new ip address due to a Wifi or LAN network change        #
#-------------------------------------------------------------------------------------------------------------------#
#    Author: Richard Hogan               mail.rich.hogan@gmail.com            https://github.com/richardhogan       #
#                                                                                                                   #
#                                                                                                                   #
#    PURPOSE:  Script will use others tools including 'facter' and 'sed' to programatically update the local        #
#              DNS zone file with a new IP address and restart the Docker container running the BIND9 DNS server    #
#              for your environment.                                                                                #
#                                                                                                                   #
# 

echo "www    IN  A      " $(facter ipaddress) >> local.zone" 
