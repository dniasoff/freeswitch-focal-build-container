FROM ubuntu:focal

LABEL Name=freeswitch-focal-build Version=0.0.1


ARG GITHUB_RUNNER_VERSION="2.165.2"
ARG DOTNET_CORE_DOWNLOAD_URL="https://download.visualstudio.microsoft.com/download/pr/b86bf782-f36a-435d-8e85-0749e1874c97/0723f572c097721865568117e840d322/dotnet-runtime-3.1.4-linux-musl-x64.tar.gz"

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

