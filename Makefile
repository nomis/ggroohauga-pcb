# Render PCB as SVG
#
# Dependencies:
# - https://github.com/INTI-CMNB/KiBot
# - https://www.gnu.org/software/m4/
# - https://www.gnu.org/software/sed/

.DELETE_ON_ERROR:
.PHONY: all

all: ggroohauga-amplifier.svg ggroohauga-bridge.svg ggroohauga-console.svg

%.svg: %.svg.in build/%-top.bare-svg build/%-bottom.bare-svg Makefile
	m4 < $< > $@

build/%-top.svg build/%-bottom.svg: %.kicad_pcb default.kibot.yaml
	kibot -e $<

build/%.bare-svg: \
		build/%.svg Makefile
	sed \
		-e 's:<!DOCTYPE [^>]\+>::' \
		-e 's:<svg \([^>]*\) width="[^"]*"\([^>]*\)>:<svg \1\2>:' \
		-e 's:<svg \([^>]*\) height="[^"]*"\([^>]*\)>:<svg \1\2>:' \
		-e 's:<svg ::' \
		< $< > $@
