#!/bin/bash

usage(){
cat << EOF
Usage: `basename $0` apptype(django_web, celery_worker, celery_beat)
EOF
}
if [ "$#" = 0 ];then
    usage && exit 1
fi
if [ "$1" = 'django_web' ];then
    exec gunicorn -w 6 -b 0.0.0.0:6000 oamapp.wsgi:application
elif [ "$1" = 'celery_worker' ];then
    exec python3.6 manage.py celery worker --loglevel=info --logfile=logs/celery.log 2>&1
elif [ "$1" = 'celery_beat' ];then
    rm -rf celerybeat.pid
    exec python3.6 manage.py celery beat --loglevel=info --logfile=logs/beat.log 2>&1
else
    usage && exit 1
fi
