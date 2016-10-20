#!bin/bash/

#chmod -rw diary.txt


echo "Please enter a thought"

read thought

TIME=$(date +%m-%d-%Y)


echo "$TIME " >> diary.txt
echo "$thought " >> diary.txt

echo "End"

