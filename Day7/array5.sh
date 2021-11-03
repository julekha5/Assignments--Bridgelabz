#! /bin/bash -x

echo ""
ans=0

 for (( i=1;i<=100;i++ ))
 do
	 ans=$ans ^ ${arr[$i]}
	 done
	for(( i=0;i<=100-2;i++))
	do
	  ans=$ans ^ $i;
        done
	echo "$ans"
