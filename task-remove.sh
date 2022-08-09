#!/bin/bash

read -p 'Please enter Filename you want to delete>' file
cd tasks/

if [ -f "$file" ]
then
    rm $file
    echo 'removed note successfully'
elif [ ! -f "$file" ]
then 
    echo "file was not found in $file please try again with .txt format"
fi

