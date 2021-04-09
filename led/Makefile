ODIR=_out
SOURCES_BS=$(wildcard *.bs)

all: $(ODIR)/mkTop.v

clean:
	$(RM) -r _out

$(ODIR)/mkTop.v: Main.bs $(SOURCES_BS)
	mkdir -p $(ODIR)
	bsc -bdir $(ODIR) -vdir $(ODIR) -verilog -g mkTop -u $<
