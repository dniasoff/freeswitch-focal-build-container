#!/bin/bash

rm -rf /var/lib/apt/lists/*
useradd -m github
usermod -aG sudo github
echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

mv ./entrypoint.sh /home/github/entrypoint.sh
cd /home/github

curl -Ls https://github.com/actions/runner/releases/download/v${GITHUB_RUNNER_VERSION}/actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz | tar xz

#update dotnet-core to be compatible with Ubuntu 20.04
mkdir dotnet-core
cd dotnet-core
curl -Ls $DOTNET_CORE_DOWNLOAD_URL | tar -xz
mv -f shared/Microsoft.NETCore.App/*/* /home/github/bin
mv -f shared/Microsoft.NETCore.App/*/.version /home/github/bin
mv -f host/fxr/*/libhostfxr.so /home/github/bin
mv -f *.txt /home/github/bin
mv dotnet /home/github/bin
cd ..
rm -rf dotnet-core

chown -R github:github /home/github
chmod u+x /home/github/entrypoint.sh

