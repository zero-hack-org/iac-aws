SHELL := /bin/bash

help:
	cat Makefile
b:
	docker-compose build
u:
	docker-compose up
b_u:
	docker-compose up --build
e:
	docker-compose exec client /bin/bash