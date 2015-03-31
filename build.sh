#!/bin/bash
rm -rf *.aux
rm -rf *.bbl
rm -rf *.blg
rm -rf *.pdf
rm -rf *.log
rm body.tex
echo "preparing latex"
python gdoc2latex.py "https://docs.google.com/document/d/1BcZZc2COFDGGLCrXbL0BW-g7YZ_j_Rq_jTBn0bgP0I8/edit"  > body.tex 
echo "latexing"
pdflatex baristademo.tex
echo "creating bibtex"
#python gdoc2latex.py "" > ref.bib
bibtex baristademo
echo "creating PDF"
pdflatex baristademo.tex
pdflatex baristademo.tex

rm -rf *.aux
rm -rf *.bbl
rm -rf *.blg
rm -rf *.log
rm body.tex
echo "DONE"
