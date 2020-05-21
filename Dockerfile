FROM ubuntu:focal

LABEL Name=freeswitch-focal-build Version=0.0.1


ARG GITHUB_RUNNER_VERSION="2.165.2"

ENV RUNNER_NAME "runner"
ENV GITHUB_PAT ""
ENV GITHUB_OWNER ""
ENV GITHUB_REPOSITORY ""
ENV RUNNER_WORKDIR "_work"





COPY *.sh ./
RUN  sh ./install_packages.sh
RUN  sh -x ./setup.sh  

USER github
WORKDIR /home/github

ENTRYPOINT ["/home/github/entrypoint.sh"]

