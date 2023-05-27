docker_build:
	docker build -t tiagotele/python_api .

docker_run:
	docker run -p 80:80 tiagotele/python_api

uvicorn_run:
	uvicorn app.api:app --reload

unit_test:
	python3 -m pytest
