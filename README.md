# PIA Ping Script
bash script to ping PIA's servers

I really have no idea what I'm doing here, but this works. PLEASE! if you know how to improve the scrip tell me!.

Credit to:
Dennis Williamson for http://superuser.com/questions/246837/how-do-i-add-text-to-the-beginning-of-a-file-in-bash

robertjinx for http://www.linuxquestions.org/questions/linux-server-73/script-to-ping-multiple-ip-addresses-one-by-one-705296/

# HOW:
Create a file called pia_servers.txt that contains the list of PIA's servers, one per line. You'll find this file here updated as from 2015/07/31.
Place pia_servers.txt in the same folder as pia_script. Run it:
$sh pia_script..sh

You'll end up with a file called pia_results.txt with the ping reulsts for each server.

# The script:

!/bin/bash

for i in $(cat pia_servers.txt); do

ping -nc 5 -q ${i} | cat - pia_results.txt > temp && mv temp pia_results.txt

done
