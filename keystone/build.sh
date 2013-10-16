#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t keystone-openldap $ROOTDIR/openldap
docker build -t keystone-postgres $ROOTDIR/postgres
docker build -t keystone $ROOTDIR
