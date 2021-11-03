#! /bin/bash -x 

isMAX=999;
randomCheck=$((RANDOM%2));

if [ $isMAX -eq $randomCheck ];
then
	read $randomCheck;
	echo "Number is Maximum: $randomCheck";
else
	echo "Number is Minimum: $randomCheck";
fi	
