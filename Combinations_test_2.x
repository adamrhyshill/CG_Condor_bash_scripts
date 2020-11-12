#!/bin/bash

counter=0
energy1=2.0
energy2=2.0

for i in `seq 0 4`
do
echo "Energy 1: "
echo $energy1
energy2=2.0
	for j in `seq 0 4`
	do
		echo "Energy 2: "
		echo $energy2
		mkdir "$counter"
		cp ./input.txt $counter
		cp ./addinput.txt $counter
#		cp ./CHA_zebra_find_rhombohedral.txt $counter
		perl -pi -e 's/0_/'$counter'_/g' $counter/input.txt
		perl -pi -e 's/variable1/'$energy1'/g' $counter/addinput.txt
		perl -pi -e 's/variable2/'$energy2'/g' $counter/addinput.txt
#		../CrystalGrower < addinput.txt
		((counter++))
		energy2=$(echo "scale=2;($energy2+0.1)"|bc -l)
	done
energy1=$(echo "scale=2;($energy1+0.1)"|bc -l)
done
