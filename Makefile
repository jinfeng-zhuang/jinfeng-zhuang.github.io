OBJS = $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OBJS)

%.html: %.md
	perl Markdown.pl --html4tags $< > $@

