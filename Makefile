all: rfc.txt rfc.html

rfc.html: rfc.xml
	xml2rfc --html $<

rfc.txt: rfc.xml
	xml2rfc $<

rfc.xml: rfc.mkd
	kramdown-rfc2629 $< > $@

.PHONY: clean
clean:
	rm -f rfc.txt rfc.xml
