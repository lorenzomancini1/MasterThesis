PROJ  = PhaseDiagrams
LC    = latexmk
LOGSDIR = .build
ARGS = -pv -pdfxe -outdir=$(LOGSDIR) -pdfxelatex="xelatex -halt-on-error" -bibtex

all : $(PROJ).pdf

$(PROJ).pdf : $(PROJ).tex
	$(LC) $(ARGS)

clean :
	rm -rf $(LOGSDIR)
	rm -rf `biber --cache`

