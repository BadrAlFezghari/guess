TARGET=README.md
SCRIPT=guessinggame.sh

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SCRIPT)
	@echo "Titre: Guessing Game" > $(TARGET)
	@echo "Date de génération : $$(date '+%Y-%m-%d %H:%M:%S')" >> $(TARGET)
	@echo "Nombre de lignes dans $(SCRIPT) : $$(wc -l < $(SCRIPT))" >> $(TARGET)

clean:
rm -f $(TARGET)
