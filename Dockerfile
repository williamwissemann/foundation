## build image containin the required foundation artifacts
FROM ubuntu:20.04 as foundation
WORKDIR /foundation
COPY artifacts artifacts
COPY packages/backhoe packages/backhoe

## build a python base image
FROM ubuntu:20.04 as python
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y -q \   
    && apt-get upgrade -y -q \
    && apt-get install -y -q \
        python3.8 \
        python3-venv \
    && apt-get clean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/* 

## build a image a basic dev venv requirments
FROM foundation:python as venv
ENV APPDIR /foundation
WORKDIR ${APPDIR}/packages/backhoe
RUN apt-get update -yq \
    && apt-get install -yq \
        python3-pip \
        git
COPY --from=foundation:artifacts ${APPDIR} ${APPDIR}
RUN make python/clean python/install-dev