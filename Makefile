
.PHONY: all

all: pre-build main-build

pre-build:
	sh makeSongCompilation.sh

main-build: guitar 

guitar: songs/guitar.cho
	chordpro --cfg=cfg.json -o guitar.pdf $<
