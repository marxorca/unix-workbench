all: README.md

README.md:
	hoy=$(date)
	touch README.md
	echo "Unix Workbench" >> README.md
	echo "Execution Date: `date`" >> README.md
	echo "Number lines of program:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


