PANDOC = pandoc
RESOURCE_PATH = --resource-path=report:screenshots:.
PDF_OPTIONS = --pdf-engine=xelatex -V mainfont="DejaVu Sans" -V papersize=a4

.PHONY: all clean

all: report/lab03.docx report/lab03.pdf
	@echo "Génération terminée."

report/lab03.docx: report/lab03.md
	$(PANDOC) "$<" $(RESOURCE_PATH) -o "$@"

report/lab03.pdf: report/lab03.md
	$(PANDOC) "$<" $(RESOURCE_PATH) $(PDF_OPTIONS) -o "$@"

clean:
	@echo "Aucun fichier supprimé."
