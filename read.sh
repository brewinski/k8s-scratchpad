#!/bin/bash
set -e

while IFS= read -r project; do
 echo -e "${project}"	
done < ./LICENSE 

