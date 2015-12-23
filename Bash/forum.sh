#! /bin/bash


while [[ true ]]; do

	
	#while [[ -z $forumname || $forumname =~ ^[:blank:] ]]; do
	read -e -p "Enter your forum name: " forumname
	[[ -z $forumname || $forumname =~ ^[^a-zA-Z0-9]+ ]] && echo "Invalid forumname format" && continue

	read -e -p "Enter your age: " age
	[[ -z $age || $age =~ [^0-9]+  || $age -ge 99 || $age == 0 ]] && echo "Invalid age format" && continue
	
	read -e -p "Enter your user ID: " uid
	[[ -z $uid || $uid -lt 0 || $uid == 0 || $uid -gt 999999 ]] && continue
		
	
	echo "You are $forumname, aged $age , next year you will be $(($age+1)), with user id $uid,
	the next user is $(($uid+1))."
	break

done
	