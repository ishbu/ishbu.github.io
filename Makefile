.PHONY: compile

compile:
	coffee -bc --output public/js src
	minify public/css/main.css

watch:
	coffee -bcw --output public/js src


