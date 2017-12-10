#!/usr/bin/env bash

docker-compose up -d --build
docker-compose run devopstools-backend python manage.py recreate_db
docker-compose run devopstools-backend python manage.py seed_db
docker-compose run devopstools-backend python manage.py test