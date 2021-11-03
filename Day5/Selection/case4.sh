#! /bin/bash -x

echo  "Enter a case number to be executed"

read num

case $num in

	1)      echo "Enter number"
		read n
		echo $n feet = $(($n*12))"inch"
		;;
        3)      echo "Enter number"
		read n
  		echo $n inch = $(($n/12))"feet"
		;;		
	2)      echo "Enter number"
		read n 
		echo $n feet = $(($n * 0.3048))"meter"
		;;
	4)      echo "Enter number"
		read n
		echo $n meter = $(($n*3.281))"feet"
		;;
	*)      echo "";;
esac



