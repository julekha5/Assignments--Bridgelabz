#! /bin/bash 

echo "Enter a number"
read n;

#thousands=$((n/1000));
#hundreds=$((n%1000/100));
#tens=$((n%100/10));
#units=$((n%10));


if [[ $n -eq 1000 ]];
then
	echo "thousands"
elif [[ $n -eq 100 ]];
then
	echo "hundreds"
elif [[ $n -eq 10 ]]
then
	echo "tens"
elif [[ $n -eq 1 ]]
then
	echo "units"
else
	echo " "
fi	


