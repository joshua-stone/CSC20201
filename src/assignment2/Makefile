PATH := $(PATH):$(HOME)/.wine/drive_c/masm32/bin/

PROGRAM = Box
SRC = $(PROGRAM).asm
OBJ = $(PROGRAM).obj
OUT = $(PROGRAM).exe
ASM = ml.exe
LINKER = link16.exe
ASM_FLAGS = /c
# LIST, LIBS, and DEFINITIONS insert the default options for link16.exe to skip
# entering them with each rebuild
LINK_FLAGS = nul.map, .lib, nul.def

all: $(OBJ)
	$(LINKER) $(OBJ), $(OUT), $(LINK_FLAGS)

$(OBJ): $(SRC)
	$(ASM) $(ASM_FLAGS) $(SRC)

clean:
	rm $(OBJ)
	rm $(OUT)
run: all
	dosbox $(OUT)

