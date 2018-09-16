PATH := $(PATH):$(HOME)/.wine/drive_c/masm32/bin

ASM = ml.exe
LINKER = link16.exe
OBJ = hello.obj
SRC = hello.asm
ASM_FLAGS = /c
OUT = hello.exe
# LIST, LIBS, and DEFINITIONS insert the default options for link16.exe to skip
# entering them with each rebuild
LIST =  nul.map
LIBS = .lib
DEFINITIONS = nul.def

all: $(OBJ)
	$(LINKER) $(OBJ), $(OUT), $(LIST), $(LIBS), $(DEFINITIONS)

$(OBJ): $(SRC)
	$(ASM) $(ASM_FLAGS) $(SRC)

clean:
	rm $(OBJ)
	rm $(OUT)
