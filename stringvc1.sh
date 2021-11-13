#! /bin/bash 

echo "Enter a string"
read string

stringtype(){
  
	  length=`echo $string | wc -c`
	  nvowels=0
	  nconsonants=0
          #leng=`expr $length - 1`
  while [ $length -gt 1 ] 
  do
      length=`expr $length - 1`
      h=`echo $string | cut -c $length` 
     
      case $h in
	      [AaEeIiOoUu])nvowels=`expr $nvowels + 1`
              
		      ;;
     
      [BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz])
      nconsonants=`expr $nconsonants + 1`
      ;;

      
   esac
  done
}

stringtype
#echo "Total number of vowel and consonant are";
echo "Vowels are :$nvowels"
echo "Consonants are : $nconsonants"

