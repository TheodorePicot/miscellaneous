# miscellaneous
This repository contains miscellaneous scripts and configs I have coded to simplify my life as a programmer
## keepass-xc scripts
### sort-entries-by-alphabetical-value-keepassxc.sh
I use the keepassxc-cli command line interface to alter a kdbx file as I want.
I've programmed this script with the help of this man page https://github.com/keepassxreboot/keepassxc/blob/develop/docs/man/keepassxc-cli.1.adoc 

This script takes the kdbx file and its key as arguments, it sorts all the existing entries alphabetically in the kdbx file. 
It loops through each letter in the alphabet creates a folder for that letter.  
It finds all the entries starting with said letter, then moves those entries to newly created folder.  


### entries-to-lower-case-snake-case-keepassxc.sh 

This script takes the same arguments as the script above.
It will get all the entries, rename them to lower case and replace spaces by snake cases.


