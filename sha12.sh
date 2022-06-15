#!/bin/bash

read firstname
if [[ "${firstname}" =~ [^a-zA-Z] ]];then 
        echo Invalid
else
	echo "valid"
 	read lastname 
	if [[ "${lastname}" =~ [^a-zA-Z] ]];then
        	echo Invalid
	else
		echo "valid"
        	echo "$firstname $lastname"
         	echo "$firstname $lastname"|sha1sum
fi
fi

