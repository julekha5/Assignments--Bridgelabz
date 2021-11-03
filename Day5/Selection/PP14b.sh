#! /bin/bash -x
read a b c

val1=`expr $a + $b * $c`
echo "a + b * c: $val1"

val2=`expr $c + $a / $b`
echo "c + a / b: $val2"

val3=`expr $a % $b + $c`
echo "a % b + c: $val3"

val4=`expr $a * $b + $c`
echo "a * b + c: $val4"

if [ $a -eq $b -a $a -eq $c ]; then
    echo "All the three numbers are equal"
elif [[ $a -eq $b || $b -eq $c || $c -eq $a ]]; then
    echo "I cannot figure out which number is largest"
else
    if [ $a -gt $b -a $a -gt $c ]; then
        echo "$a is biggest number"
    elif [ $b -gt $a -a $b -gt $c ]; then
        echo "$b is biggest number"
    elif [ $c -gt $a -a $c -gt $b ]; then
        echo "$c is biggest number"
    fi
fi



