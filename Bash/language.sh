#! /bin/bash

index=0 #Index for any matching languages

for line in $(cat bhaarat.txt | sed 's/[0-9]*\.//g') # Read from number stripped file
do
	if [[ $line =~ ^[SH] ]]; then # If language matches s or h
		echo -e "$index $line" >> output.txt
		: $((index += 1)) # Increment our index
	fi
done

cat output.txt	