.SILENT:

unit_test:
	python -m unittest test.py

pep8:
	pep8 pyrallelize/

test: pep8 unit_test

update:
	python setup.py sdist upload -r pypi

install_dependencies:
	pip install -r requirements.txt

update_pypi:
	python setup.py sdist upload -r pypi
