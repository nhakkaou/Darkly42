#!/bin/bash
echo "What is your Server?"
read URL
F=`curl -L $URL/.hidden 2>/dev/null | cut -d '>' -f2 | cut -d '/' -f1 | tr '<' ' ' | tail -n +5 | head -n +26`
for i in $(echo $F | tr " " "\n")
do 
	curl -L $URL/.hidden/$i/README;
	for n in  $(curl -L $URL/.hidden/$i 2>/dev/null | cut -d '>' -f2 | cut -d '/' -f1 | tr '<' ' ' | tail -n +5 | head -n +26 | tr " " "\n")
	do 
		curl -L $URL/.hidden/$i/$n/README;
	for m in $(curl -L $URL/.hidden/$i/$n 2>/dev/null | cut -d '>' -f2 | cut -d '/' -f1 | tr '<' ' ' | tail -n +5 | head -n +26 | tr " " "\n")
	do 
		curl -L $URL/.hidden/$i/$n/$m/README;
	done;
done;
done;