FROM gitpod/workspace-full

USER gitpod

RUN sudo DEBIAN_FRONTEND=noninteractive apt-get -q update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    libssl-dev \
    lynx \
    youtube-dl \
 && sudo rm -rf /var/lib/apt/lists/*


# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
