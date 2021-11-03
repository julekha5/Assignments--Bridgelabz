#! /bin/bash

for((i=0; i<=10; i++))
do
	array[i]=$((RANDOM%900 + 100))
done
echo "The 10 random three digit numbers are: "
echo "${array[@]}"
#echo "${array[1]}"
#echo "${array[8]}"
echo "SecondLargest Number is:\n"
printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1

echo "SecondSmallest Number is:\n"
printf '%s\n' "${array[@]}" | sort -n | tail -10 | head -1 

