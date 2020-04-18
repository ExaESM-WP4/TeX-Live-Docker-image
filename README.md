# TeX Live docker image

A PDF build environment for local development purposes and Github CI workflows. Either download from [Dockerhub](https://hub.docker.com/r/exaesmwp4/texlive) or build on site by using the example statements below.

## Examples

```bash
docker pull exaesmwp4/texlive
docker run -v $(pwd):/home -it exaesmwp4/texlive pdflatex example.tex
```

Useful for debugging...

```bash
git clone https://github.com/ExaESM-WP4/texlive-docker.git
cd texlive-docker/
docker image build . -t texlive
docker run -v $(pwd):/home -it texlive /bin/bash
pdflatex example.tex
```
