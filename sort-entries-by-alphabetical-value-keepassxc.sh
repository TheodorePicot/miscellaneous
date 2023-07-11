#!/bin/bash
databaseName=$1 
databaseKey=$2
IFS=$'\n'
for letter in {a..z}
do
    echo $databaseKey | keepassxc-cli mkdir "$databaseName" $letter
    entries=($(echo $databaseKey | keepassxc-cli search $databaseName "*t:^$letter"))
    for (( i=0; i<${#entries[@]}; i++ ))
    do
        echo "$i: ${entries[$i]}"
        echo $databaseKey | keepassxc-cli mv $databaseName "${entries[$i]}" "/$letter"
    done
done
