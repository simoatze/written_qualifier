DEPS = *.tex *.bib

all: root.pdf

root.pdf: root.tex $(DEPS)
	pdflatex root.tex	
	bibtex root1-blx
	bibtex root2-blx
	bibtex root3-blx
	bibtex root4-blx
	bibtex root
	pdflatex root.tex
	pdflatex root.tex

clean:
	rm -rf root.pdf *.ps *.dvi *~ \#*\#
	rm -rf *.aux *.bbl *.bcf *.blg *.dvi *.log *.rel *.toc *.out *.synctex.gz auto *.run.xml *-blx.bib
