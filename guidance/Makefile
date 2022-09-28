DIAGRAMS := $(patsubst %.mmd,%.svg,$(wildcard diagrams/*.mmd))
OUTDIR := ../upload/guidance

all: index.html

index.html: index.bs $(DIAGRAMS)
	bikeshed spec $< $@

publish: index.html
	mkdir -p $(OUTDIR)/diagrams
	cp -r diagrams/*.svg $(OUTDIR)/diagrams/
	cp $< $(OUTDIR)/

serve: $(DIAGRAMS)
	bikeshed serve

clean:
	rm -rf $(OUTDIR) index.html

%.svg: %.mmd
	mmdc -i $< -o $@

.PHONY: serve publish
