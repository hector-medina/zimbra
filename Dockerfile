# Official recommended version for installing zimbra.
FROM ubuntu:20.04

# Copy zimbra instalattion.
COPY zimbra-9.0.0 /zimbra-9.0.0

# Update and upgrade repositories.
RUN apt-get update -y && \
    apt-get upgrade -y

# Dependencies.
RUN apt-get install lsb-release -y && \
    apt-get install gnupg -y && \
    apt-get install -y software-properties-common && \
    apt-get install -y language-pack-en-base && \
    export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && \
    echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections

# Dummy entrypoing to prevent container to exit.
ENTRYPOINT tail -f /dev/null