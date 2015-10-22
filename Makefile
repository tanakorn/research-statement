
main.pdf: *.tex
	xelatex main.tex
	xelatex main.tex

clean:
	rm *.log *.aux *.pdf

