FROM python

WORKDIR /home/nrsc5-dui/

COPY . .

RUN apt update \
