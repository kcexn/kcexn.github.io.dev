all: ./css/bootstrap.css ./css/style.css ./blog

css/bootstrap.css: ./scss/bootstrap.scss ./scss/_variables.scss
	sass-js --no-source-map ./scss/bootstrap.scss ./css/bootstrap.css

css/style.css: ./scss/style.scss
	sass-js --no-source-map ./scss/style.scss ./css/style.css

./blog: ./kcexn.github.io.blog.dev/_site/
	rm -rf blog/
	cp -r ./kcexn.github.io.blog.dev/_site/ blog/
