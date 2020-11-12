#!/bin/bash

counter=0
counter_file=0
k=0

    for j in `seq 0 24`
    do
	counter_file=$((counter+j))
	if (( $counter_file % 5 == 0))
	    then
	    if ((j > 0))
		then
	        ((k++))
	    fi
	fi
        echo $counter_file >> $k"_ratios.txt"
	grep "nm" $counter_file"_CHA_simulation_parameters.txt" >> $k"_ratios.txt"
	printf "\n" >> $k"_ratios.txt"
    done
