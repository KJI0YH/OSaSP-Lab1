#!/bin/bash

source=$1
executable=$2


if gcc $source -o $executable 
then
	chmod +x $executable
	./$executable
else
	2>&1
fi 

