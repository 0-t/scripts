#!/bin/bash

STR="git merge --abort"
declare -a arr=(device/common frameworks/native frameworks/av)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	$STR; echo $STR: $i 
done

echo Done.
