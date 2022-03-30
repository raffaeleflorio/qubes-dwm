DWM=dwm
DEP=libX11-devel libXft-devel libXinerama-devel

.PHONY: setup build dep

build: setup
	@echo building...
	git apply --directory=${DWM} dwm-qubes-systray.patch
	git apply --directory=${DWM} dwm-qubes.patch
	cd ${DWM}; make

setup:
	git submodule init
	git submodule update

dep:
	dnf install ${DEP}

clean:
	git submodule deinit --all -f
