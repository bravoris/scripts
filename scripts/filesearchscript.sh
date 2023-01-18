#!/bin/bash

echo "Enter the filename"

read filename

if [ -f $filename ]
then
echo "File $filename exists"
else "File $filename does not exist"
fi
