FROM ubuntu:focal

LABEL Name=freeswitch-focal-build Version=0.0.1


ARG GITHUB_RUNNER_VERSION="2.165.2"

ENV RUNNER_NAME "runner"
ENV RUNNER_TOKEN ""
ENV GITHUB_OWNER ""
ENV GITHUB_REPOSITORY ""
ENV RUNNER_WORKDIR "_work"





COPY actions-runner-linux-x64-2.263.0.tar.gz ./
COPY *.sh ./
RUN  ./install_packages.sh
RUN  ./setup.sh  

USER github
WORKDIR /home/github

ENTRYPOINT ["/home/github/entrypoint.sh"]

