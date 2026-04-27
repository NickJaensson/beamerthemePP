TEX = main.tex
PDF = $(TEX:.tex=.pdf)

all: $(PDF)

$(PDF): $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb

allclean: clean
	rm -f *.pdf

.PHONY: all clean

