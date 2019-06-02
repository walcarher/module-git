all: intro linux terminal git cmake latex doxygen docker gdb gitlab gnuplot project discussions

intro:
	cd intro && pdflatex *.tex && pdflatex *.tex
	
linux:
	cd linux && pdflatex *.tex && pdflatex *.tex
		
terminal:
	cd terminal && pdflatex *.tex && pdflatex *.tex
	
git:
	cd git && pdflatex git.tex && pdflatex git.tex
	cd git && pdflatex git-memo.tex
	
cmake:
	cd cmake && pdflatex cmake.tex && pdflatex cmake.tex
	cd cmake && pdflatex cmake-memo.tex
	
latex:
	cd latex && pdflatex latex.tex && pdflatex latex.tex
	
doxygen:
	cd doxygen && pdflatex *.tex && pdflatex *.tex
	
docker:
	cd docker && pdflatex *.tex && pdflatex *.tex
	
gdb:
	cd gdb && pdflatex *.tex && pdflatex *.tex
	
gitlab:
	cd gitlab && pdflatex *.tex && pdflatex *.tex
	
gnuplot:
	cd gnuplot && pdflatex *.tex && pdflatex *.tex
	
project:
	cd project && pdflatex *.tex && pdflatex *.tex
	
discussions:
	cd discussions && pdflatex *.tex && pdflatex *.tex
	
export:
	mkdir -p pdf
	rm -f pdf/*.pdf
	cp */*.pdf pdf/
	
clean:
	find . -regex '.*\.\(aux\|log\|vrb\|toc\|gz\|nav\|out\|snm\)' -delete
	
clean-pdf:
	find . -name "*.pdf" -delete

.PHONY: intro linux terminal git cmake latex doxygen docker gdb gitlab gnuplot project discussions

