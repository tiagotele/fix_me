docker_build:
	docker build -t davimetalx/fix_me

docker_run:
	docker run -p 80:80 davimetalx/fix_me

uvicorn_run:
	uvicorn app.api:app --reload

unit_tests:
	python3 -m pytest
