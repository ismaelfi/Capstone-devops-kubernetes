setup:
	# Create a python virtualenv & activate it
	python3 -m venv ~/.capstone
	# source ~/.capstone/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:

	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v2.7.0/hadolint-Darwin-x86_64 &&\
	chmod +x ./hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

test:
	python -m pytest -vv --cov=app test_app.py

build:
	docker build -t flask-change:latest .

run:
	docker run -p 8080:8080 flask-change

invoke:
	curl http://127.0.0.1:8080/change/1/34

run-kube:
	kubectl apply -f kube-hello-change.yaml

all: install lint test
