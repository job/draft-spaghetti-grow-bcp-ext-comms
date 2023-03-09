BASENAME=draft-spaghetti-grow-bcp-ext-comms
VERSION=00

EXT=.xml
SOURCENAME=${BASENAME}${EXT}
DRAFTNAME=${BASENAME}-${VERSION}

all:	text	html

text:
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.txt

html:
	xml2rfc ${SOURCENAME} --html -o ${DRAFTNAME}.html

clean:
	rm -v *.txt *.html
