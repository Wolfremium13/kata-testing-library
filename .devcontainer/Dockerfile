FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London

# Required for ubuntu
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3.10 \
    gpg-agent \
    make

# Mojo installation (didn't work for now)
RUN curl https://get.modular.com | \
  MODULAR_AUTH=mut_a1fc8bb4484d4318b0824ee9d4908b0c \
  sh -
RUN modular install mojo
RUN /bin/bash -c "echo 'export MODULAR_HOME=\"${HOME}/.modular\"' >> ~/.bashrc && \
     echo 'export PATH=\"${HOME}/.modular/pkg/packages.modular.com_mojo/bin:$PATH\"' >> ~/.bashrc && \
     source ~/.bashrc"