TYPST=typst compile
PDFTOPNG=pdftoppm -png
TFLAGS=--font-path ~/.local/share/fonts/
CENSORING=--input censored=true
PDFDIR=PDFs
IMAGEDIR=PNGs

SRC=$(wildcard *.typ)
OBJSPDF=$(addprefix $(PDFDIR)/, $(SRC:.typ=.pdf))
OBJSPNG=$(addprefix $(IMAGEDIR)/, $(SRC:.typ=-1.png))

all: censored

pdf: $(PDFDIR)/ $(OBJSPDF)

censored: CENSORING=--input censored=true
censored: $(PDFDIR)/ $(IMAGEDIR)/ $(OBJSPNG)

uncensored: CENSORING=--input censored=false
uncensored: $(PDFDIR)/ $(IMAGEDIR)/ $(OBJSPNG)

%/:
	mkdir $@

$(PDFDIR)/%.pdf: %.typ
	$(TYPST) $(TFLAGS) $< -f pdf $@ $(CENSORING)

$(IMAGEDIR)/%-1.png: $(PDFDIR)/%.pdf
	$(PDFTOPNG) $< $(IMAGEDIR)/$*

clean:
	rm -f $(PDFDIR)/*.pdf
	rm -f $(IMAGEDIR)/*.png

clena:
	@mv Makefile hopla
