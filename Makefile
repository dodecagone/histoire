TYPST=typst compile
PDFTOPNG=pdftoppm -png
TFLAGS=--font-path ~/.local/share/fonts/
UNCENSORED=--input censored=true
PDFDIR=PDFs
IMAGEDIR=PNGs

SRC=$(wildcard *.typ)
OBJSPDF=$(addprefix $(PDFDIR)/, $(SRC:.typ=.pdf))

all: $(PDFDIR)/ $(IMAGEDIR)/ $(OBJSPDF)

%/:
	mkdir $@

$(PDFDIR)/%.pdf: %.typ
	$(TYPST) $(TFLAGS) $< -f pdf $@ $(UNCENSORED)
	$(PDFTOPNG) $@ $(IMAGEDIR)/$*

clean:
	rm -rf $(PDFDIR)/
	rm -rf $(IMAGEDIR)/

