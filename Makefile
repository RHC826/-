latest: *.md
	ls -t *.md | head -n 1 | xargs -i pandoc {} -f markdown -t html -o res.html

target: target.md
	pandoc -f markdown -t html -o res.html target.md

clean:
	rm -rf target.md
	rm -rf *.html
	
slide: 
	ls -t *.md | head -n 1 | xargs -i pandoc -s -t revealjs -o res.html --metadata title="last update `date "+%Y-%m%d-%H%M%S"`" {}



