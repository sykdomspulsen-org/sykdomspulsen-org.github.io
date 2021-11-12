#!/bin/bash

Rscript -e "rmarkdown::render_site('.')"
git fetch origin gh-pages
git add docs && git commit -m "Initial docs subtree commit"
git subtree push --prefix docs origin gh-pages
rm -rf docs

