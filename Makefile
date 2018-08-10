PYTHON_BIN = /usr/local/bin/python2.7
VIRTUALENV = ~/.emacs.d/var/libvxe_py

all : $(VIRTUALENV)

# Configure virtualenv for this project.
$(VIRTUALENV) :
	virtualenv -p $(PYTHON_BIN) $(VIRTUALENV)
	source $(VIRTUALENV)/bin/activate

# Install editor tooling.
.PHONY: tooling
tooling : $(VIRTUALENV)
	pip install jedi
	pip install epc
	pip install pylint
