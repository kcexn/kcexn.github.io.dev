all: ./css/bootstrap.css ./css/style.css ./blog

./css/bootstrap.css: ./scss/bootstrap.scss ./scss/_variables.scss
	sass --no-source-map ./scss/bootstrap.scss ./css/bootstrap.css

./css/style.css: ./scss/style.scss
	sass --no-source-map ./scss/style.scss ./css/style.css

./blog: ./kcexn.github.io.blog.dev/_site/
	cp -r ./kcexn.github.io.blog.dev/_site/ blog/
