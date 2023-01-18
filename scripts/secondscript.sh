#!/bin/bash

name='AWS'
env='dev'
echo " My cloud is $name, running on $env "
echo "-----------Welcome to $name ----------"

echo "We are using $SHELL"

echo "#########"

echo "we are at $HOME and today is "
date | awk '{print $1,$2,$3}'
