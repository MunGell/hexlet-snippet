dist/snippet.js: config.json node_modules
	@node bin/generate

config.json: config.json.skel
ifeq ($(wildcard config.json),)
	@cp config.json.skel config.json
endif

node_modules: package.json
	npm install

clean:
	@rm -rf node_modules dist/*.js

.PHONY: clean