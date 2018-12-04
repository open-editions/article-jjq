open-editions-online.pdf: open-editions-online.md
	echo "Wordcount: "; wc -w $<
	pandoc -o $@ $< --pdf-engine=xelatex --filter=pandoc-citeproc
	open $@
