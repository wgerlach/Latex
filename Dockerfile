FROM debian:stretch-slim
RUN apt-get update && apt-get install -y \
  biber \
  latexmk \
  make \
  texlive-full \
  fig2dev \
  inkscape \
  git \
  python-setuptools \
  && rm -rf /var/lib/apt/lists/*

RUN cd / ; git clone https://github.com/abourget/inkscapeslide && cd /inkscapeslide/ && python setup.py install

