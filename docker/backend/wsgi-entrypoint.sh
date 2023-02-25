#!/bin/bash

until cd /app/backend/samgtudist
do
    echo "Waiting for server volume..."
done

until python ./manage.py migrate
do
    echo "Waiting for db to be ready..."
    sleep 2
done

python ./manage.py collectstatic --noinput

gunicorn samgtudist.wsgi --bind 0.0.0.0:8000

########################################

# run development server
# DEBUG=True ./manage.py runserver 0.0.0.0:8000