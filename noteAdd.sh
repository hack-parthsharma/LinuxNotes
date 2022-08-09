#!/bin/bash
read -p 'Please enter Filename>' file
cd notes/
nano $file.txt
echo ''
echo 'Created Note successfully'