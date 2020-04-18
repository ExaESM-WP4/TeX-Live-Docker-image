FROM ubuntu:18.04

RUN apt-get update --yes \
 && apt-get install --yes --no-install-recommends \
    texlive-latex-base texlive-latex-recommended texlive-latex-extra latexmk python-pip \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install Pygments

WORKDIR /home
