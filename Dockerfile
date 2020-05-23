FROM ubuntu:focal

LABEL Name=freeswitch-focal-build Version=0.0.1


ARG GITHUB_RUNNER_VERSION="2.165.2"

ENV RUNNER_NAME "runner"
ENV RUNNER_TOKEN ""
ENV GITHUB_OWNER ""
ENV GITHUB_REPOSITORY ""
ENV RUNNER_WORKDIR "_work"


COPY *.sh ./
RUN  bash ./install_packages.sh
RUN  bash ./setup.sh  

USER github
WORKDIR /home/github

ENTRYPOINT ["/home/github/entrypoint.sh"]

