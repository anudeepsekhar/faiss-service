FROM continuumio/miniconda3:master-alpine

WORKDIR /home

RUN conda install -c pytorch faiss-cpu

COPY ./matcher.py .

ENTRYPOINT [ "/bin/sh" ]