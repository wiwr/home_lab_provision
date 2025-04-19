#!/bin/bash

REPO_URL="https://github.com/wiwr/home_lab_provision.git"
REPO_DIR="~/home_lab_provison"

apt update && apt upgrade -y

apt install -y git ansible

rm -rf "$REPO_DIR"
git clone "$REPO_URL" "$REPO_DIR"

cd "$REPO_DIR"
ansible-playbook playbook.yml

