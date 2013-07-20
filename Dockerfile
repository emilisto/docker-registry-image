from ubuntu

# Speed things up by building an image with the common packages pre-installed:
# cat Dockerfile.base | docker build -t ubuntu-python-base -
# from ubuntu-python-base

ADD docker-registry /docker-registry
ADD run.sh /run.sh

ENV SERVICE_APPROOT /docker-registry

# Python pre-requisites
RUN apt-get install -y -q python-setuptools python-dev python-software-properties
RUN apt-get install -y -q libevent-dev
RUN easy_install pip virtualenv

RUN /docker-registry/build.sh
EXPOSE 5000

CMD [ "/bin/bash", "/run.sh" ]
