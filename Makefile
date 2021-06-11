install-virtualenv:
	rm -rf local.virtualenv
	virtualenv -p python3.7 local.virtualenv
	./local.virtualenv/bin/pip install setuptools pip wheel -U
	./local.virtualenv/bin/pip install -r requirements.txt --find-links "file://${HOME}/.pip/wheelhouse"

test:
	local.virtualenv/bin/pytest --cov-report html --cov-report term

shell:
	./local.virtualenv/bin/ptpython --vi
