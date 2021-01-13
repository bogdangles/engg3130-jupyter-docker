FROM jupyter/base-notebook:latest
ARG JUPYTERHUB_VERSION=1.3.0

USER root
RUN apt-get update \
 && apt-get install -y dieharder \
 && rm -rf /var/lib/apt/lists/*

USER jovyan
RUN pip install --no-cache \
    jupyterhub==$JUPYTERHUB_VERSION

COPY environment.yml /tmp/environment.yml
RUN conda env update -f /tmp/environment.yml -n root && \
    conda clean --all -y && \
    rm -rf ~/.cache/pip

#USER root
#RUN npm install -g webpack webpack-cli fs-extra style-loader css-loader
#RUN npm install -g jupyter-matplotlib
