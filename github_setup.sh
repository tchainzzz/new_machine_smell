#!/bin/bash
echo "Setting up Github SSH key..."

if [ ! -d ".ssh" ]; then
    echo "No directory .ssh -- please make your own or copy from your local filesystem, as committing those to a repo is considered a very silly idea."
    exit 1
fi

cp -r .ssh ~
chmod 600 ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-add -l -E sha256


