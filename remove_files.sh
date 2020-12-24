#!/bin/bash

for file in ./**/*
do
	if [[ $file == *index.html ]] 
	then
		echo " $file safe" 
	elif [[ $file == *.html ]] 
	then
		rm $file
	fi
done


for file in ./**/*
do
	if [[ $file == *index.html ]]
	then 
		sed -i '/HTTrack/d' $file &&

		sed -i '/gtag.js/,+8d' $file &&

		sed -i '/Facebook Pixel Code/,+16d' $file 
		
	fi
done
