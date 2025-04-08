RESUME_FILE = resume.json
HTML_FILE = index.html
PDF_FILE = resume.pdf
THEME = stackoverflow

all: html pdf

html:
	resume export $(HTML_FILE) --resume $(RESUME_FILE) --theme $(THEME)

pdf:
	resume export $(PDF_FILE) --resume $(RESUME_FILE) --theme $(THEME)

clean:
	rm -f $(HTML_FILE) $(PDF_FILE)

.PHONY: all html pdf clean

