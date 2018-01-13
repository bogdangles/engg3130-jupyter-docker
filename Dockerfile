FROM jupyter/scipy-notebook:400c69639ea5
ARG JUPYTERHUB_VERSION=0.8.1
RUN pip install --no-cache \
    jupyterhub==$JUPYTERHUB_VERSION

COPY environment.yml environment.yml
RUN conda env update -f environment.yml -n root

