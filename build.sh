#!/bin/bash

echo "Running pdflatex..."

cd ./LaTeX/
ret=$(pdflatex Proposal.tex)
cd ..
if [ -e ./LaTeX/Proposal.pdf ]
    then
    mv ./LaTeX/Proposal.pdf .
    echo "Build complete"
else
    echo "[Error]: Error executing pdflatex ($ret)"
fi
