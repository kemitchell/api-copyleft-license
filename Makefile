BUILD=build
TARGETS=$(addprefix $(BUILD)/,license.md license.docx license.pdf license.html)

all: $(TARGETS)

$(BUILD)/%.md: %.md | $(BUILD)
	fgrep -v "<!--" $< | sed '/^\s*$$/d' | awk 'ORS="\n\n"' > $@

$(BUILD)/%.docx: %.md | $(BUILD)
	pandoc -o $@ $<

$(BUILD)/%.html: %.md | $(BUILD)
	pandoc -t html5 -o $@ $<

$(BUILD)/%.pdf: %.md | $(BUILD)
	pandoc -o $@ $<

$(BUILD):
	mkdir -p $(BUILD)

.PHONY: clean

clean:
	rm -f $(TARGETS)
