#!/bin/bash

echo "Running pdflatex..."

cd ./LaTeX/
# run twice to produce contents and resolve figs
ret=$(pdflatex Proposal.tex < /dev/null)
ret=$(pdflatex Proposal.tex < /dev/null)
cd ..
if [ -e ./LaTeX/Proposal.pdf ]
    then
    mv ./LaTeX/Proposal.pdf .
    echo "Build complete"
else
    echo "[Error]: Error executing pdflatex ($ret)"
fi
