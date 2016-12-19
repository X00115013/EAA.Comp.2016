# Thomas Murray X00115013
# CA2 EAA
#!/bin/bash

SYN="synthetic.dat";
OUT="results.dat";
TEMP="TEMP.txt";

# writing headings in the results.dat file
printf "C0\t\tN\t\tIDLE" > $OUT;

for i in {1..50}
do

	# 10 seconds timeout to kill each call to loadtest, The & makes the command run in the background
	echo "Loadtest.c $i"
	echo "User $i" 
	timeout 10 ./loadtest $i &
	

	# Display  ten  reports of global statistics from the processor at 1 second intervals
	echo "MPSTAT $i"
	mpstat 1 10  > $TEMP
	
	# Calculating the total Co by doing a line count in the synthetic.dat file
	trans=`wc -l < $SYN`
	echo "Co: $trans"
	
	# Retrieve the 12th column from MPSTAT output, which is the CPU average
    	Avg=`awk '/Average/ {print $12}' $TEMP`
    	echo "CPU Idle AVG = $Avg %"

 	#Appending to results.dat
	#Number of CPU accesses
	#Transaction ID
	#Idle Average 
	printf "\n$trans\t\t$i\t\t$Avg" >> $OUT
  
done
