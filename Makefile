TARGETS=license.docx license.pdf license.html

all: $(TARGETS)

%.docx: %.md
	pandoc -o $@ $<

%.html: %.md
	pandoc -t html5 -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<

.PHONY: clean

clean:
	rm -f $(TARGETS)
