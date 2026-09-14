REPORT_MD := $(wildcard lab*.md)
REPORT_PDF := $(REPORT_MD:.md=.pdf)
REPORT_DOCX := $(REPORT_MD:.md=.docx)

PRESENTATION_MD := presentation.md
PRESENTATION_PDF := presentation.pdf
PRESENTATION_HTML := presentation.html

PDF_ENGINE := xelatex
FONT := DejaVu Sans

all: report presentation

report: $(REPORT_PDF) $(REPORT_DOCX)

presentation: $(PRESENTATION_PDF) $(PRESENTATION_HTML)

%.pdf: %.md
	pandoc $< -o $@ --pdf-engine=xelatex -V mainfont="DejaVu Sans"

%.docx: %.md
	pandoc $< -o $@

$(PRESENTATION_HTML): $(PRESENTATION_MD)
	pandoc $< -o $@

clean:
	rm -f $(REPORT_PDF) $(REPORT_DOCX) $(PRESENTATION_PDF) $(PRESENTATION_HTML)
