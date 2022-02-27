#! /bin/bash

# Not enough args
if [ $# -lt 3 ]; then
    echo -e "Error! Usage: ./organizer theSrc theDest fileType [type2] [type3] ...\nTry again\n"
    exit
fi

# 1st 2 args not dirs
if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo -e "Error! The first two arguments must be directories\nTry again\n"
    exit
fi

# Same dir twice
if [ $1 = $2 ]; then
    echo -e "Same directory specified twice. Disaster results."
    exit
fi

# dest not empty
if [ ! -z $(ls -A $2) ]; then
    echo -e "Error! The Destination must be empty for this script\nTry again\n"
    exit
fi

# Move the files
for ft in ${@:3}; do
    # Check if files with filetype exist
    noft=$(ls -A $1*.$ft)
    if [ $? -gt 0 ]; then
        continue
    fi
    # Move files with filetype
    for f in $(ls -A $1*.$ft); do
        echo -e "mv $f  $2"
    done
done
