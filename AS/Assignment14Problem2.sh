#! /bin/bash -x

read email
#pattern="^[0-9a-z]+([.-_+][0-9]+)*@[0-9a-z]+[.][a-z]{2,3}([.][a-z]{2})*$"
pattern="^[abc]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"
if [[ $email =~ $pattern ]]
then
	echo valid
else
	echo invalid
fi
