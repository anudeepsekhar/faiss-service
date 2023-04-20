FROM continuumio/miniconda3:master-alpine

WORKDIR /home

RUN conda create -n p39 python=3.9

RUN conda activate p39

RUN conda install -c pytorch faiss-cpu

COPY ./matcher.py .

ENTRYPOINT [ "/bin/sh" ]