# oat-datepicker - Build System
# Requires: esbuild

.PHONY: dist css js clean size

CSS_FILES = src/css/datepicker.css
JS_FILES = src/js/base.js src/js/datepicker.js

dist: css js size

css:
	@mkdir -p dist
	@cat $(CSS_FILES) > dist/oat-datepicker.css
	@esbuild dist/oat-datepicker.css --minify --outfile=dist/oat-datepicker.min.css
	@gzip -9 -k -f dist/oat-datepicker.min.css
	@echo "CSS: $$(wc -c < dist/oat-datepicker.min.css | tr -d ' ') bytes (minified)"

js:
	@mkdir -p dist
	@cat $(JS_FILES) > dist/oat-datepicker.js
	@esbuild dist/oat-datepicker.js --minify --outfile=dist/oat-datepicker.min.js
	@gzip -9 -k -f dist/oat-datepicker.min.js
	@echo "JS: $$(wc -c < dist/oat-datepicker.min.js | tr -d ' ') bytes (minified)"

clean:
	@rm -rf dist

size:
	@echo ""
	@echo "Bundle:"
	@echo "CSS (src):   $$(wc -c < dist/oat-datepicker.css | tr -d ' ') bytes"
	@echo "CSS (min):   $$(wc -c < dist/oat-datepicker.min.css | tr -d ' ') bytes"
	@echo "CSS (gzip):  $$(wc -c < dist/oat-datepicker.min.css.gz | tr -d ' ') bytes"
	@echo ""
	@echo "JS (src):    $$(wc -c < dist/oat-datepicker.js | tr -d ' ') bytes"
	@echo "JS (min):    $$(wc -c < dist/oat-datepicker.min.js | tr -d ' ') bytes"
	@echo "JS (gzip):   $$(wc -c < dist/oat-datepicker.min.js.gz | tr -d ' ') bytes"
