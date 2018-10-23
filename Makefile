default: prop

prop:
	latex prop
	bibtex prop
	latex prop
	latex prop
	dvips -t letter prop -o
	ps2pdf prop.ps prop.pdf

facilities: facilities.tex
	latex facilities
	dvips -t letter facilities -o
	ps2pdf facilities.ps facilities.pdf

budget: budgetjustify.tex
	latex budgetjustify
	dvips -t letter budgetjustify -o
	ps2pdf budgetjustify.ps budgetjustify.pdf

resubmit: resubmit.tex
	latex resubmit
	dvips -t letter resubmit -o
	ps2pdf resubmit.ps resubmit.pdf

clean:
	/bin/rm -f *.aux *.ps *.log *.dvi *.bbl *.blg prop.pdf facilities.pdf 
