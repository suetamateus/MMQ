README.md: 
	touch README.md

README.md: guessinggame.sh
	echo "Hands-on Experience" > README.md
	date >> README.md
	echo "Number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
