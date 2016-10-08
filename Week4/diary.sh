#!bin/bash/

#chmod -rw diary.txt


echo "Please enter a thought"

read thought

#TIME=date "+date -%m-%d-%Y)"


echo "date -%m-%d-%Y " >> diary.txt
echo "$thought " >> diary.txt

echo "End"

