FILES = $(wildcard *.md)
PDF_FILES = $(patsubst %.md,%.pdf,$(FILES))
DOCX_FILES = $(patsubst %.md,%.docx,$(FILES))

all: $(PDF_FILES) $(DOCX_FILES)

%.pdf: %.md
	pandoc $< -o $@ --pdf-engine=xelatex

%.docx: %.md
	pandoc $< -o $@

clean:
	rm -f $(PDF_FILES) $(DOCX_FILES)
