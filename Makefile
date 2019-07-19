EASY_INSTALL = easy_install
FUSE = fuse
ZXBASIC_DIR = ./tools/zxbasic
ZXBASM = $(ZXBASIC_DIR)/zxbasm.py
MAIN_FILE = ./src/main.z80.asm
OUT_FILE = ./bin/program.tzx

build:
	mkdir -p ./bin
	$(ZXBASM) -Ta -o $(OUT_FILE) $(MAIN_FILE)

run:
	$(FUSE) $(OUT_FILE)

install:
	$(EASY_INSTALL) $(ZXBASIC_DIR)