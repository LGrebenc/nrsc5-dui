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
&& git clone https://github.com/theori-io/nrsc5.git \
&& cd nrsc5 \
&& mkdir build \
&& cmake -DLIBRARY_DEBUG_LEVEL=1 \
&& make \
&& make install \
&& ldconfig
