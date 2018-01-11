FROM debian:stretch-slim
RUN apt-get update && apt-get install -y \
  biber \
  latexmk \
  make \
  texlive-full \
  fig2dev \
  inkscape \
  && rm -rf /var/lib/apt/lists/*
