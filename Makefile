all:
	mkdir proj
	cp -R {doc,plugin} proj
	tar zcf proj.tgz proj
	rm -rf proj
