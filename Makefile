
default: buildout

bin/buildout: bin/python
	bin/python ./bootstrap.py

bin/python:
	virtualenv --clear --distribute --python=python2.6 .

buildout: bin/buildout
	@bin/buildout -v

clean: 
	@rm -rf eggs/ fake-eggs stamps/ include/ lib/ develop-eggs/ bin/
	@echo leaving 'parts/' !!

