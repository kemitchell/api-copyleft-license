NPMBIN=node_modules/.bin
CFCM=$(NPMBIN)/commonform-commonmark
CFHTML=$(NPMBIN)/commonform-html
CFDOCX=$(NPMBIN)/commonform-docx
JSON=$(NPMBIN)/json

GIT_TAG=$(shell (git diff-index --quiet HEAD && git describe --exact-match --tags 2>/dev/null | sed 's/v//'))
EDITION:=$(or $(EDITION),$(if $(GIT_TAG),$(GIT_TAG),Internal Draft))

BUILD=build
TARGETS=$(addprefix $(BUILD)/,license.html license.docx license.pdf)

all: $(TARGETS)

$(BUILD)/%.form.json: %.md | $(BUILD) $(CFCM)
	$(CFCM) parse --only form $< > $@

$(BUILD)/%.html: $(BUILD)/%.form.json $(BUILD)/%.title | $(BUILD) $(CFHTML)
	$(CFHTML) \
		--title "$(shell cat $(BUILD)/$*.title)" \
		--edition "$(EDITION)" \
		--ids \
		--lists \
		--html5 \
		< $< > $@

$(BUILD)/%.docx: $(BUILD)/%.form.json $(BUILD)/%.title styles.json | $(BUILD) $(CFDOCX)
	$(CFDOCX) \
		--number outline \
		--left-align-title \
		--indent-margins \
		--title "$(shell cat $(BUILD)/$*.title)" \
		--edition "$(EDITION)" \
		--styles styles.json \
		$< > $@

$(BUILD)/%.title: %.md | $(BUILD) $(CFCM) $(JSON)
	$(CFCM) parse < $< | $(JSON) frontMatter.title > $@

$(BUILD)/%.pdf: $(BUILD)/%.docx
	unoconv $<

$(BUILD):
	mkdir -p $(BUILD)

$(CFCM) $(CFHTML) $(CFDOCX):
	npm ci

.PHONY: clean

clean:
	rm -rf $(BUILD)
