#!/bin/bash

if [ -e songs/guitar.cho ]
then
	rm songs/guitar.cho
fi
touch songs/guitar.cho
first=true
for f in songs/guitar/*.cho; do
	if [ "$first" = true ]
	then
		first=false;
	else
		echo "\n{ns}\n" >> songs/guitar.cho;
	fi
	cat "$f" >> songs/guitar.cho;	
done