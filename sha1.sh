#!/bin/bash

read firstname
if [[ "${firstname}" =~ [^a-zA-Z] ]];then 
        echo Invalid
	break
else
        echo valid
fi
read lastname 
if [[ "${lastname}" =~ [^a-zA-Z] ]];then
        echo Invalid
	break
else
        echo valid
fi
if(( "$firstname"=="valid" && "lastname"=="valid" ))                                 
then
        echo "$firstname $lastname"
	 echo "$firstname $lastname"|sha1sum
else
	break

fi

