name:=VKR_Crnorbnja_Filip

all: build run

build:
	xelatex $(name)
	makeindex $(name).nlo -s nomencl.ist -o $(name).nls
	xelatex $(name)

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

fclean: clean
	rm -fr $(name).pdf

re: fclean all
