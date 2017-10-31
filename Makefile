DWM=dwm
DEP=libX11-devel libXft-devel libXinerama-devel

.PHONY: setup build dep

build: setup
	@echo building...
	git apply --directory=${DWM} dwm.patch
	cd ${DWM}; make

setup:
	git submodule init
	git submodule update
	cd ${DWM}; make config.h

dep:
	dnf install ${DEP}
