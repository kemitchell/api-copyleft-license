TARGETS=license.docx license.pdf license.html

all: $(TARGETS)

%.docx: %.md
	pandoc -o $@ $<

%.html: %.md
	pandoc -t html5 -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<

.PHONY: test wordcount

test: wordcount

# Keep the license at or below 500 words.
wordcount: license.md
	@test $(shell grep -vF "<!--" $< | wc -w | cut -d ' ' -f 1) -le 500

.PHONY: clean

clean:
	rm -f $(TARGETS)
