#!/bin/bash
databaseName=$1 
databaseKey=$2
IFS=$'\n'
for letter in {a..z}
do
    echo $databaseKey | keepassxc-cli mkdir -q "$databaseName" $letter
    entries=($(echo $databaseKey | keepassxc-cli search $databaseName "*t:^$letter"))
    for (( i=0; i<${#entries[@]}; i++ ))
    do
        echo $databaseKey | keepassxc-cli mv -q $databaseName "${entries[$i]}" "/$letter"
    done
done
