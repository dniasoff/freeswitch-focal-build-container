#!/bin/bash

rm -rf /var/lib/apt/lists/*
useradd -m github
usermod -aG sudo github
echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

mv entrypoint.sh /home/github/

cd /home/github

curl -Ls https://etech-pro-public-files.s3.eu-west-2.amazonaws.com/packages/actions-runner-linux-x64-2.263.0.tar.gz | tar xz

chown -R github:github /home/github
chmod u+x /home/github/entrypoint.sh

