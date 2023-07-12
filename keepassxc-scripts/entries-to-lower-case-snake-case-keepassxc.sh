#!/bin/bash
databaseName=$1 
databaseKey=$2
IFS=$'\n'
entries=($(echo $databaseKey | keepassxc-cli search -q $databaseName "*"))
for (( i=0; i<${#entries[@]}; i++ ))
do
    oldEntryName=${entries[$i]}
    tmp=${oldEntryName,,}
    newEntryName=${tmp// /-}
    echo ${newEntryName:3}
    echo $databaseKey | keepassxc-cli edit -q -t "${newEntryName:3}" $databaseName "${entries[$i]}"
done
