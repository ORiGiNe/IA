URBI_DIR=../UObjects/urbi/
URBI=urbi-launch --start

default: main

uobjects:
	cd $(URBI_DIR) && $(MAKE)

main: main.u
	$(URBI) -- $<
