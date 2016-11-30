FROM ubuntu

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install build-essential

RUN git clone https://github.com/dwestfall/TinyXML.git
RUN cd TinyXML; make
RUN TinyXML/xmltest
