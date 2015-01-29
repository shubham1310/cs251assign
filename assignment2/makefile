all: pdfmake dvimake clean
dvi: dvimake clean
dvimake:
	latex article
	bibtex article
	latex article
	latex article
	latex resume
pdf: pdfmake clean
pdfmake:
	pdflatex article
	bibtex article
	pdflatex article
	pdflatex article
	pdflatex resume
clean:
	rm *.log  *.aux  *.bbl  *.blg
