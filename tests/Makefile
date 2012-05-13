URBI_DIR=../UObjects/urbi/
URBI=urbi-launch --start

uobjects:
	cd $(URBI_DIR) && $(MAKE)

radar: RadarTest.u uobjects
	$(URBI) $(URBI_DIR)/ULib.so -- $<

path: PathFindingTest.u
	$(URBI) -- $<
