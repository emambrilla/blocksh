SOURCE=./source
HDRS=./hdrs

all: $(MYTARGET)/blocksh

clean:
	@echo Borrando...
	@$(MYRM) $(MYTARGET)/blocksh$(MYEXE_SUFFIX)

$(MYTARGET)/blocksh: $(SOURCE)/blocksh.c
	@echo Compilando blocksh
	@$(MYCC) $(SOURCE)/blocksh.c -o $(MYTARGET)/blocksh -lreadline
