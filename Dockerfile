FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update --yes \
 && apt-get install --yes --no-install-recommends \
    texlive-latex-base texlive-latex-recommended texlive-latex-extra latexmk \
    python-is-python3 python3-pip \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install Pygments

RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata

WORKDIR /home
