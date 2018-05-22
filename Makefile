OBJS = $(patsubst %.md,%.html,$(wildcard *.md))
OBJS += index.html

all: $(OBJS)

%.html: %.md
	perl Markdown.pl --html4tags $< > $@

index.html: README
	perl Markdown.pl --html4tags $< > $@

