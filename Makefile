# TO DO: FIX THE STRUCTURE OF THE PROJECT (AVOID MKDIRS TO BE TOO LONG)

PROJ = main
LC = latexmk
AUXSDIR = .build
OPT = -halt-on-error
ARGS = -pv -pdfxe -outdir=$(AUXSDIR) -pdfxelatex="xelatex $(OPT)" -bibtex

all: $(PROJ).pdf

$(PROJ).pdf : $(PROJ).tex mkdirs
	$(LC) $(ARGS)

clean:
	rm -rf $(AUXSDIR)
	rm -rf `biber --cache`

mkdirs:
	mkdir -p $(AUXSDIR)/chapters/chap0
	mkdir -p $(AUXSDIR)/chapters/chap1
	mkdir -p $(AUXSDIR)/chapters/chap2
	mkdir -p $(AUXSDIR)/chapters/chap3
	mkdir -p $(AUXSDIR)/chapters/chap4
	mkdir -p $(AUXSDIR)/chapters/chap5
	mkdir -p $(AUXSDIR)/chapters/chap6
.PHONY: all clean
