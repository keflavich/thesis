# latex Makefile
texpath=/usr/texbin/
PDFLATEX=${texpath}pdflatex -halt-on-error -synctex=1 --interaction=nonstopmode
LATEX=${PDFLATEX}
BIBTEX=bibtex
DVIPS=dvips
PS2PDF=ps2pdf

all: thesis

thesis:  
	@rm -f thesis*.aux thesis*.bbl thesis*.blg thesis*.dvi thesis*.log thesis*.lot thesis*.lof
	${LATEX} thesis.tex
	${BIBTEX} thesis
	${LATEX} thesis.tex
	${BIBTEX} thesis
	${LATEX} thesis.tex

mwe:  
	${LATEX} mwe.tex
	${BIBTEX} mwe
	${LATEX} mwe.tex
	${BIBTEX} mwe
	${LATEX} mwe.tex

.PHONY : %.tex
%.tex :
	${PDFLATEX} $@
	${BIBTEX} $(basename @)
	${PDFLATEX} $@
	${BIBTEX} $(basename @)
	${PDFLATEX} $@


ch_h2colarge: 
	@rm -f ch_h2colarge*.aux ch_h2colarge*.bbl ch_h2colarge*.blg ch_h2colarge*.dvi ch_h2colarge*.log ch_h2colarge*.lot ch_h2colarge*.lof
	${LATEX} ch_h2colarge.tex
	${BIBTEX} ch_h2colarge
	${LATEX} ch_h2colarge.tex
	${BIBTEX} ch_h2colarge
	${LATEX} ch_h2colarge.tex

ch_v2:  
	@rm -f ch_v2*.aux ch_v2*.bbl ch_v2*.blg ch_v2*.dvi ch_v2*.log ch_v2*.lot ch_v2*.lof
	${LATEX} ch_v2.tex
	${BIBTEX} ch_v2
	${LATEX} ch_v2.tex
	${BIBTEX} ch_v2
	${LATEX} ch_v2.tex

ch_w5: 
	@rm -f ch_w5*.aux ch_w5*.bbl ch_w5*.blg ch_w5*.dvi ch_w5*.log ch_w5*.lot ch_w5*.lof
	${LATEX} ch_w5.tex
	${BIBTEX} ch_w5
	${LATEX} ch_w5.tex
	${BIBTEX} ch_w5
	${LATEX} ch_w5.tex


ch_h2co:  
	@rm -f ch_h2co*.aux ch_h2co*.bbl ch_h2co*.blg ch_h2co*.dvi ch_h2co*.log ch_h2co*.lot ch_h2co*.lof
	${LATEX} ch_h2co.tex
	${BIBTEX} ch_h2co
	${LATEX} ch_h2co.tex
	${BIBTEX} ch_h2co
	${LATEX} ch_h2co.tex

ch_boundhii: 
	@rm -f ch_boundhii*.aux ch_boundhii*.bbl ch_boundhii*.blg ch_boundhii*.dvi ch_boundhii*.log ch_boundhii*.lot ch_boundhii*.lof
	${LATEX} ch_boundhii.tex
	${BIBTEX} ch_boundhii
	${LATEX} ch_boundhii.tex
	${BIBTEX} ch_boundhii
	${LATEX} ch_boundhii.tex

introduction: 
	@rm -f introduction*.aux introduction*.bbl introduction*.blg introduction*.dvi introduction*.log introduction*.lot introduction*.lof
	${LATEX} introduction.tex
	${BIBTEX} introduction
	${LATEX} introduction.tex
	${BIBTEX} introduction
	${LATEX} introduction.tex


ch_software: 
	@rm -f ch_software*.aux ch_software*.bbl ch_software*.blg ch_software*.dvi ch_software*.log ch_software*.lot ch_software*.lof
	${LATEX} ch_software.tex
	${BIBTEX} ch_software
	${LATEX} ch_software.tex
	${BIBTEX} ch_software
	${LATEX} ch_software.tex
