LESS=assets/less/style.less
CSS=assets/style.css
baseurl=unintentionally-blank
proofOpts=--allow-hash-href --assume-extension --empty-alt-ignore --url-swap \/$(baseurl): #--disable-external
proofFile=proofReport.txt
posts=_posts/*

all: site

full: css site

site: *
	jekyll build

preview: *
	make site
	# If you get weird behavior, stop previewing, run make site, then resume previewing
	jekyll serve --watch --incremental

# $(CSS): $(LESS)
# 	lessc --clean-css $(LESS) > assets/style.css

$(CSS): $(LESS)
	lessc $(LESS) > assets/style.css

css: $(CSS)

proof:
	# This checks for broken links and such.
	# This requires you have the html-proofer gem installed.
	htmlproofer _site $(proofOpts) 2>&1 | tee $(proofFile)

clean:
	rm -r _site
