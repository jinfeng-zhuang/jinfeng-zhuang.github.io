OBJS = $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OBJS)
	mv README.html index.html
	mv *.html ../

%.html: %.md
	perl ../scripts/Markdown.pl --html4tags $< > $@

index.html: README
	perl ../scripts/Markdown.pl --html4tags $< > $@

