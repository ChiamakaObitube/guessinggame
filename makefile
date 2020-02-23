all: README.md

README.md:
	echo '# Guessing Game' > README.md
	echo '## Guessing Game by Chiamaka Obitube ##' >> README.md
	echo '* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S) *' >> README.md
	echo '* There are $(shell wc -l < guessinggame.sh) lines of code in guessinggame.sh *' >> README.md
clean:
	rm README.md