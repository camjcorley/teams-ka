build: clean
	-mkdir build
	zip -r -x"./.*" -x"*pycache*" -x"*.log" -x"*.ini" -x"Makefile" -x"README*" -x"requirements.txt" -x"teams-ka.app" -x"build/" ./build/teams-ka.zip .
	echo '#!/usr/bin/env python3' | cat - ./build/teams-ka.zip > ./build/teams-ka.app
	chmod a+x ./build/teams-ka.app
	-rm ./build/teams-ka.zip

build-win: clean
	-mkdir build
	zip -r -x"./.*" -x"*pycache*" -x"*.log" -x"*.ini" -x"Makefile" -x"README*" -x"requirements.txt" -x"teams-ka.app" -x"build/" ./build/teams-ka.zip .

	-rm ./build/teams-ka.zip

run:
	./build/teams-ka.app

clean:
	-rm -rf build/*

test:
	python3 .

setup:
	pip3 install -r requirements.txt
