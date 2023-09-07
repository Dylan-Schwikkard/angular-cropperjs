filesToKeep?=.git .gitignore
removeAll:
	ls | grep -v -e "^dist$$" -e "^temp$$" | xargs  rm -rf
copyAll:
	mkdir temp; cp -r $(filesToKeep) temp
copyBack:
	cp -r temp/* .; rm -rf temp
prepare:
	make copyAll; make removeAll; make copyBack