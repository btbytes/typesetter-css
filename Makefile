SOURCES = $(wildcard *.less)
OBJS = $(patsubst %.less, %.css, $(SOURCES))

%.css: %.less  Makefile
	lessc --yui-compress $< > $@

typesetter.css: typesetter-colour.css typesetter-layout.css

clean:
	rm -f $(OBJS)

.PHONY: clean
