all: po/fr.po content/_index.fr.md

po/fr.po: po/strings.pot
	msgmerge --update --previous --backup=off $@ $<

po/strings.pot: content/_index.md
	html2po --pot --input=$< --output=$@

content/_index.fr.md: content/_index.md po/fr.po
	po2html --template=content/_index.md --input=po/fr.po --output=$@