# --- module_image ---------------------------------------------------------------
FROM ubuntu:20.04 as module_image
## --- configure default environment -------------------------------------------------
LABEL maintainer="William T. Wissemann (WilliamWissemann@gmail.com)"
# --- configure default environment --------------------------------------------------
ARG DEBIAN_FRONTEND=noninteractive 
ENV HOMEDIR /opt/app/module/
# --- configure dependencies ---------------------------------------------------------
RUN apt-get update \
    && apt-get upgrade -y \
    # install requirements
    && apt-get install --no-install-recommends -y \
        python3.8 \
        python3.8-dev \
        python3-pip \
        # prevent remove of these downstream
        python3-distutils \
        make \
        virtualenv \
    # clean any install artifacts
    && apt-get clean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
# --- setup user ----------------------------------------------------------
RUN mkdir --parents $HOMEDIR \
    && useradd -ms /bin/bash founder \
    && chown -R founder:founder $HOMEDIR
USER founder
WORKDIR $HOMEDIR
# --- copy over files ----------------------------------------------------------
# COPY Makefile ../Makefile
# --- run script ---------------------------------------------------------------
# ENTRYPOINT ["python3"]

# remove any pip related stuff
# && rm -rf /root/.cache/pip/ \
# && rm -rf ~/.pypirc \
# && rm -rf /etc/pip.conf \