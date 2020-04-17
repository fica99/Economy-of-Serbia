name:=VKR_Crnorbnja_Filip

all: build run

build:
	pdflatex $(name)

run:
	evince $(name).pdf

clean:
	rm -fr *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*synctex.gz

fclean: clean
	rm -fr $(name).pdf

re: fclean all
