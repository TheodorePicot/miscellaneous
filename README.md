# miscellaneous
This repository contains miscellaneous scripts and configs I have coded to simplify my life as a programmer
### sort-entries-by-alphabetical-value-keepassxc.sh
I use the keepassxc-cli command line interface to alter a kdbx file as I want.
I'll program this script with the help of this man page https://github.com/keepassxreboot/keepassxc/blob/develop/docs/man/keepassxc-cli.1.adoc 

This script takes the kdbx file and its key as arguments, it sorts all the existing entries alphabetically in the kdbx file. 
It loops through each letter in the alphabet creates a folder for that letter.  
It finds all the entries starting with said letter, then moves those entries to newly created folder.  
