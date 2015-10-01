
example: build
	node test/server.js

build: node_modules
	mkdir -p build
	@./node_modules/.bin/browserify index.js -d --s autocomplete > build/index.js

node_modules: package.json
	@npm install -d
	touch node_modules

clean:
	rm -fr build node_modules

.PHONY: test clean build
