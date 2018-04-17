MSGSRC=$(wildcard *.po)
MSGOBJ=$(MSGSRC:.po=.mo)

all: $(MSGOBJ)

clean:
	rm -f *.mo

%.mo: %.po
	./msgfmt.py -o $@ $<
