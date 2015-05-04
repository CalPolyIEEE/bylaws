SHELL := /bin/bash

bylaws: bylaws.tex
	@pdflatex -interaction=nonstopmode bylaws.tex > .tmp || (cat .tmp; exit 1)
	@scp bylaws.pdf host:~/Desktop/ > /dev/null # optional
	@rm .tmp

clean:
	@rm -f bylaws.{aux,log,out,pdf,toc}
