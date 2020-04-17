name:=VKR_Crnorbnja_Filip

all: build run

build:
	pdflatex -jobname=$(name) main.tex

run:
	evince $(name).pdf

clean:
	rm -fr *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out

fclean: clean
	rm -fr $(name).pdf

re: fclean all
