
default: buildout

bin/buildout: bin/python
	bin/python ./bootstrap.py

bin/python:
	virtualenv --clear --distribute --python=python2.6 .

buildout: bin/buildout
	@mkdir -p run logs tmp 
	@bin/buildout -v
	@parts/mongrel2/bin/m2sh load

clean: 
	@rm -rf eggs/ fake-eggs stamps/ include/ lib/ develop-eggs/ bin/
	@echo leaving 'parts/' !!

