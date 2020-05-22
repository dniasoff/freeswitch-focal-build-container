#!/bin/bash

rm -rf /var/lib/apt/lists/*
useradd -m github
usermod -aG sudo github
echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

mv entrypoint.sh /home/github/
mv actions-runner-linux-x64-2.263.0.tar.gz /home/github
cd /home/github

curl -Ls https://github.com/actions/runner/releases/download/v${GITHUB_RUNNER_VERSION}/actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz | tar xz
rm -rf bin
tar -xf actions-runner-linux-x64-2.263.0.tar.gz

chown -R github:github /home/github
chmod u+x /home/github/entrypoint.sh

