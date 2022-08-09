#!/bin/bash

echo 'Creating tasks/ folder'

dirname="tasks/"

if [ ! -d "$dirname" ]
then
    echo "File doesn't exist. Creating now"
    mkdir ./$dirname
    echo "File created"
else
    echo "NOTICE:File exists in correc#!t path skipping.."
fi

sleep 1 



echo 'successfully created the following directories..'

cd tasks/

read -p 'Please enter Filename>' file
cd notes/
nano $file.txt
echo ''
echo 'Created Note successfully'