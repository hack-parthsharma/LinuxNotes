#!/bin/bash

dirname="notes/"

if [ ! -d "$dirname" ]
then
    echo "File doesn't exist. Creating now"
    mkdir ./$dirname
    echo "File created"
else
    echo "NOTICE:File exists in correct path skipping.."
fi