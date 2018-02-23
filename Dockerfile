FROM jupyter/scipy-notebook:400c69639ea5
ARG JUPYTERHUB_VERSION=0.8.1
RUN pip install --no-cache \
    jupyterhub==$JUPYTERHUB_VERSION

COPY environment.yml /tmp/environment.yml
RUN conda env update -f /tmp/environment.yml -n root && \
    conda clean --all -y && \
    rm -rf ~/.cache/pip

RUN apt-get update && apt-get install -y \
    dieharder \
 && rm -rf /var/lib/apt/lists/*
