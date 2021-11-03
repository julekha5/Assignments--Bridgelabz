#! /bin/bash

#to find factors of a number
echo "Enter number"
read num

for (( i=2; i<=num; i++ ));
do
    while [ $((num%$i)) == 0 ];
    do
        echo Factors are: "[${i[@]}]"
        num=$((num/$i))
    done
done

