#!/bin/bash

#to run: ./script_coreAPI_OMA.sh input > output   / here input is a list of 5 letters codes OMA.  

while IFS='' read -r line || [[ -n "$line" ]]; do
echo $line
coreapi get https://omabrowser.org/api/taxonomy/$line/?type=dictionary
done < "$1"




