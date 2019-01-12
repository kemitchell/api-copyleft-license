.PHONY: test wordcount

test: wordcount

# Keep the license at or below 500 words.
wordcount: license.md
	@test $(shell wc -w $< | cut -d ' ' -f 1) -le 500
