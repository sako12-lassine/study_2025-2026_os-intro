PANDOC = pandoc
RESOURCE_PATH = --resource-path=.:report:screenshots:Screenshots:Скриншоты:images
PDF_OPTIONS = --pdf-engine=xelatex -V mainfont="DejaVu Sans" -V papersize=a4

REPORT_MD = $(wildcard report/*.md)
REPORT_DOCX = $(REPORT_MD:.md=.docx)
REPORT_PDF = $(REPORT_MD:.md=.pdf)

.PHONY: all clean

all: $(REPORT_DOCX) $(REPORT_PDF)
	@echo "Génération des rapports terminée."

report/%.docx: report/%.md
	$(PANDOC) "$<" $(RESOURCE_PATH) -o "$@"

report/%.pdf: report/%.md
	$(PANDOC) "$<" $(RESOURCE_PATH) $(PDF_OPTIONS) -o "$@"

clean:
	@echo "Aucun fichier supprimé."
