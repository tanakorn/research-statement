
main.pdf: *.tex local.bib
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex

clean:
	rm *.log *.aux *.pdf

