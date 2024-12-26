FROM python

WORKDIR /home/nrsc5-dui/

COPY . .

RUN apt update \
&& apt install -y \ 
    libgirepository1.0-dev \
    libgtk-3-dev \
&& pip install -r requirements.txt \
&& ldconfig
