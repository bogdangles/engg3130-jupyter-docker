FROM jupyter/scipy-notebook:400c69639ea5
ARG JUPYTERHUB_VERSION=0.8.1
RUN pip3 install --no-cache \
    jupyterhub==$JUPYTERHUB_VERSION


