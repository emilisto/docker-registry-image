#!/bin/bash

export PYTHONPATH=~/
source ~/env/bin/activate
gunicorn --access-logfile - --log-level debug --debug -b 0.0.0.0:5000 -w 1 wsgi:application
