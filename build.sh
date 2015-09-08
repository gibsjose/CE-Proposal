#!/bin/bash

echo "Running pdflatex..."

# Proposal
# run twice to produce contents and resolve figs
cd ./LaTeX/
ret=$(pdflatex Proposal.tex < /dev/null)
ret=$(pdflatex Proposal.tex < /dev/null)
cd ..
if [ -e ./LaTeX/Proposal.pdf ]
    then
    mv ./LaTeX/Proposal.pdf .
    echo "Build complete: Proposal.pdf"
else
    echo "[Error]: Error executing pdflatex:"
    echo "$ret"
fi

# Summary
# run twice to produce contents and resolve figs
cd ./LaTeX/
ret=$(pdflatex Summary.tex < /dev/null)
ret=$(pdflatex Summary.tex < /dev/null)
cd ..
if [ -e ./LaTeX/Summary.pdf ]
    then
    mv ./LaTeX/Summary.pdf .
    echo "Build complete: Summary.pdf"
else
    echo "[Error]: Error executing pdflatex:"
    echo "$ret"
fi
