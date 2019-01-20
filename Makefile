all: ./css/bootstrap.css ./css/style.css

./css/bootstrap.css: ./scss/bootstrap.scss ./scss/_variables.scss
	sass --no-source-map ./scss/bootstrap.scss ./css/bootstrap.css

./css/style.css: ./scss/style.scss
	sass --no-source-map ./scss/style.scss ./css/style.css
