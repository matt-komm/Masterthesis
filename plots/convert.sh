#!/bin/bash
for file in `find *.ps -maxdepth 0`
	do
	if [ $file -ot $file".pdf" ];
		then
		echo "skipping "$file
		else
		ps2pdf $file $file".pdf"
		pdfcrop $file".pdf"
		fi
	done
