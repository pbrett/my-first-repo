README.md:
	echo "# My Project" > README.md
	date >> README.md
	echo "- Number of lines contained:" >> README.md
	echo -n "-    " >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
