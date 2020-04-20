name:=VKR_Crnorbnja_Filip

all: build run

build:
	xelatex $(name).tex
	makeindex $(name).nlo -s nomencl.ist -o $(name).nls
	biber $(name).bcf
	xelatex $(name).tex
	xelatex $(name).tex

run:
	evince $(name).pdf

clean:
	rm -fr *.aux \
		*.fdb_latexmk \
		*.fls \
		*.log \
		*.out \
		*synctex.gz \
		*.nlo \
		*.nls \
		*.ilg \
		*.toc \
		*.run.xml \
		*.bbl \
		*.bcf \
		*.blg

fclean: clean
	rm -fr $(name).pdf

re: fclean all
