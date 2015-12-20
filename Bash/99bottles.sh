#! /bin/bash


for (( bottles = 99; bottles > -1; bottles-- )); do

	if [[ $bottles > 1 ]]; then
		echo "$bottles bottles of beer on the wall, $bottles bottles of beer."
		echo "Take one down and pass it around, $(($bottles-1)) bottles of beer on the wall."
	elif [[ $bottles == 1 ]]; then
		echo "$bottles bottle of beer on the wall, $bottles bottle of beer."
		echo "Take one down and pass it around, no more bottles of beer on the wall."
	elif [[ $bottles == 0 ]]; then
		echo "No more bottles of beer on the wall, no more bottles of beer."
		echo "Go to the store and buy some more, 99 bottles of beer on the wall."
	fi

done
