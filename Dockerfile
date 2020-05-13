FROM debian:buster

RUN apt update && apt install -y build-essential sphinx-common
RUN apt install -y libpam-dev
RUN apt install -y python3-dev
RUN apt install -y python-dev
#RUN apt install -y python-pam
#RUN apt install -y python3-pam
RUN apt install -y python3-pip
RUN apt install -y git
RUN pip3 install git+https://github.com/FirefighterBlu3/python-pam.git

RUN mkdir /pam
WORKDIR /pam

COPY . .

RUN make
RUN make install
RUN make test
