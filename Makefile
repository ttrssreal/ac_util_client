.PHONY: all assault_cube build clean

AC_REPO=https://github.com/assaultcube/AC

all: build

AC:
	@echo "Cloning Assault-Cube"
	@git clone $(AC_REPO)

client_src: src
ac_src: AC
	@echo "applying patches"
	./apply_patches.sh

build_client: client_src
	@echo "Building Util Client"
	@make -C src/

build_ac: ac_src
	@echo "Building Assault Cube"
	@make -C AC/source/src/

build: build_client build_ac
	@echo "- Task Building"

clean: client_src ac_src
	@echo "- Task Cleaning"
	@make -C src/ clean
	@make -C AC/source/src/ clean
