copy Bolum*.md pynarhelp.md
pandoc pynarhelp.md --output=pynarhelp.html --to=html5 --css=github.css --highlight-style=haddock --self-contained
del pynarhelp.md