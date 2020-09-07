#!/bin/bash -x

RandomHeadOrTail=$((RANDOM%2))
if [[ $RandomHeadOrTail -eq 0 ]]
then
	echo "Tail"
else
	echo "Head"
fi
