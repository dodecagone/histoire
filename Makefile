TYPST=typst compile
FLAGS=--font-path ~/.local/share/fonts/ -f pdf
UNCENSORED=--input censored=true
OBJDIR=PDFs

SRC=$(wildcard *.typ)
OBJS=$(addprefix $(OBJDIR)/, $(SRC:.typ=.pdf))

all: $(OBJDIR) $(OBJS)

$(OBJDIR):
	mkdir $@

$(OBJDIR)/%.pdf: %.typ
	$(TYPST) $(FLAGS) $< $@ $(UNCENSORED)
