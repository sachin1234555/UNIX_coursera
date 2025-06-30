README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "Date: $(shell date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

.PHONY: clean

clean:
	rm -f README.md
