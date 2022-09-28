OUTDIR := upload

all: publish

index.html: index.bs
	bikeshed spec $< $@

publish: index.html upload/spec upload/guidance
	cp $< $(OUTDIR)/

upload/spec:
	make -C spec publish

upload/guidance:
	make -C guidance publish

clean:
	rm -f index.html $(OUTDIR)/index.html

.PHONY: clean publish upload/spec upload/guidance