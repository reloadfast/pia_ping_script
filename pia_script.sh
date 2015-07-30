#!/bin/bash

for i in $(cat pia_servers.txt); do
ping -nc 5 -q ${i} | cat - pia_results.txt > temp && mv temp pia_results.txt

done
