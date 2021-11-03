#! /bin/bash 

echo -n "Enter a number "

read n


case $n in

	1)   echo -n "units";;
        10)  echo -n "tens";;
	100) echo -n "hundred";;
	1000)echo -n "thousands";;
        *)   echo -n "";;
esac



