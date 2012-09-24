for file in `find *.ps -maxdepth 0`
	do
	ps2pdf $file $file".pdf"
	pdfcrop $file".pdf"
	done
