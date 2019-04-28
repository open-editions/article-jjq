open-editions-online.pdf: open-editions-online.md images/map.png images/media.svg images/pca.svg
	echo "Wordcount: "; wc -w $<
	pandoc -o $@ $< --pdf-engine=xelatex --filter=pandoc-citeproc --template=default.latex
	xdg-open $@

open-editions-online-bw.pdf: open-editions-online.md images/map.png images/media-bw.svg images/pca-bw.svg
	cat $< | sed 's/\.svg/-bw\.svg/g' | pandoc -o $@ --pdf-engine=xelatex --filter=pandoc-citeproc --template=default.latex
	xdg-open $@

open-editions-online.docx: open-editions-online.md
	pandoc -o $@ $< --filter=pandoc-citeproc
	xdg-open $@

.PHONY: all
all: open-editions-online.docx open-editions-online.pdf open-editions-online-bw.pdf
