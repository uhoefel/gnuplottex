clean:
	rm -f *.sty *.log *.aux *.dvi *.glo *.idx *.eps *.ps *.pdf *-fig*.gnuplot example-pdf-gnuplottex* *-fig*.tex *.jpg

doc:	sty
	pdflatex -shell-escape gnuplottex.dtx && pdflatex -shell-escape gnuplottex.dtx

sty:
	latex gnuplottex.ins

tar:	doc
	cd ..; tar czf gnuplottex/gnuplottex.tar.gz gnuplottex/gnuplottex.ins gnuplottex/gnuplottex.dtx \
	gnuplottex/gnuplottex.pdf gnuplottex/README gnuplottex/gpl.txt gnuplottex/example-pdf.tex gnuplottex/example.gnuplot \
	gnuplottex/SomeValuesForGnuplot.txt
