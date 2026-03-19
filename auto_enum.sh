#!/bin/bash

# Check if num of arguments = 0
if [ $# -eq 0 ]; then
    echo "Error: Target IP missing."
    echo "Use: ./auto_enum.sh <Target_IP>"
    exit 1
fi

Target_IP=$1
Output_Folder="recon_$Target_IP"

#2. Create a directory for the results (if it does not exist)
mkdir -p $Output_Folder

echo "Starting recon over target: $Target_IP " 
echo "Results in: $Output_Folder/"

# 3. Deploy Nmap with stealth flag and save the output on the desired folder

nmap -sS -T4 -p- -oN $Output_Folder/initial_nmap.txt $Target_IP

echo "Scan completed"

#4. Check if port 80 is open in order to launch a Gobuster recon. Save output on the created folder.
if grep -q "80/tcp open" $Output_Folder/initial_nmap.txt; then 
    echo "Port 80 open: deploying a Gobuster enumeration on the background..."

    gobuster dir -u http://$Target_IP -w /usr/share/wordlists/dirb/common.txt -o $Output_Folder/gobuster_80.txt -q &
else
    echo "Port 80 closed. Skipping web scan"
fi



