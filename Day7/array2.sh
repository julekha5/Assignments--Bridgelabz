#! /bin/bash

for((i=0; i<=10; i++))
do
	arr[i]=$((RANDOM%900 + 100))
done
echo "The 10 random three digit numbers are: "
echo "${arr[@]}"


#sort "${arr[@]}"
#echo "Sorted array is:"
#echo "${arr[@]}"

echo "SecondLargest Number is:\n"
printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1

echo "SecondSmallest Number is:\n"
printf '%s\n' "${arr[@]}" | sort -n | tail -10 | head -1 

sort () {
    for ((i=0; i <= $((${#arr[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#arr[@]} - 1)); ++j))
        do
            if [[ ${arr[i]} -gt ${arr[j]} ]]
            then
                echo $i $j ${arr[i]} ${arr[j]}
                tmp=${arr[i]}
                arr[i]=${arr[j]}
                arr[j]=$tmp
            fi
        done
    done
}
#echo "Sorted array is:"
sort "${arr[@]}"

