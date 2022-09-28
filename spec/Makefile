OUTDIR := ../upload/spec

all: index.html

index.html: index.bs
	bikeshed spec $< $@

publish: index.html
	mkdir -p $(OUTDIR)
	cp $< $(OUTDIR)/

clean:
	rm -rf $(OUTDIR) index.html

serve:
	bikeshed serve

.PHONY: serve publish