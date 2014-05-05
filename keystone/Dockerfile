# keystone
#
# VERSION               1.0

FROM ubuntu:12.04
MAINTAINER Werner R. Mendizabal "werner.mendizabal@gmail.com"

RUN apt-get install -y git-core
RUN apt-get install -y python-dev libxml2-dev libxslt1-dev libsasl2-dev libsqlite3-dev libssl-dev libldap2-dev

RUN git clone https://github.com/openstack/keystone.git

RUN apt-get install -y python-pip

RUN pip install -r /keystone/requirements.txt
RUN pip install -r /keystone/test-requirements.txt

WORKDIR /keystone

RUN python setup.py develop

RUN apt-get install -y libpq-dev
RUN pip install psycopg2

RUN apt-get install -y postgresql-client

EXPOSE 5000 35357

ADD files/run.sh run.sh

CMD /run.sh
