BASENAME=draft-ietf-grow-bcp-ext-comms

EXT=.xml
SOURCENAME=${BASENAME}${EXT}

all:	text	html

text:
	xml2rfc ${SOURCENAME} --text

html:
	xml2rfc ${SOURCENAME} --html

clean:
	rm -v *.txt *.html
