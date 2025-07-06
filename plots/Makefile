.DELETE_ON_ERROR:
.SECONDARY:
.PHONY: all

all: \
	ggroohauga-amplifier.zip \
	ggroohauga-bridge.zip \
	ggroohauga-console.zip

ggroohauga-amplifier.zip: $(wildcard ggroohauga-amplifier-*)
	zip $@ $^

ggroohauga-bridge.zip: $(wildcard ggroohauga-bridge-*)
	zip $@ $^

ggroohauga-console.zip: $(wildcard ggroohauga-console-*)
	zip $@ $^
