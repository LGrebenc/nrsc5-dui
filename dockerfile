FROM python

WORKDIR /home/nrsc5-dui/

COPY . .

RUN apt update \
&& apt install -y \ 
git \
    build-essential \
    cmake \
    autoconf \
    libtool \
    libao-dev \
    libfftw3-dev \
    librtlsdr-dev \
    libgirepository1.0-dev \
    libgtk-3-dev \
&& pip install -r requirements.txt \
&& ldconfig
