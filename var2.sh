#!/bin/bash
catalog=$1

let count=0
IFS=$'\n'
list=$(find "$catalog" -type f)
for i in $list
do	
	let "count+=1"
	find "$i" -printf "%M %s %p\n"
done
echo  "Listed "$count" files"



