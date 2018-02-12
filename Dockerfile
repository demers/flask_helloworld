FROM ubuntu:17.10

MAINTAINER FND <fndemers@gmail.com>

ENV WORKDIRECTORY /root

RUN apt-get update

RUN apt install -y python3 python3-pip

# Version Ubuntu 12.04 LTS...
#RUN apt install -y python3-setuptools
#RUN easy_install3 pip \
    #&& pip install --upgrade pip

# Mise à jour PIP
RUN pip3 install --upgrade pip

# Installation Flask
RUN pip3 install --user flask

WORKDIR ${WORKDIRECTORY}

COPY hello.py ${WORKDIRECTORY}

EXPOSE 5000

CMD python3 hello.py