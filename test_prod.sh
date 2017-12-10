#!/usr/bin/env bash

docker-compose -f docker-compose-prod.yml up -d --build
docker-compose -f docker-compose-prod.yml run devopstools-backend python manage.py recreate_db
docker-compose -f docker-compose-prod.yml run devopstools-backend python manage.py seed_db
docker-compose -f docker-compose-prod.yml run devopstools-backend python manage.py test
