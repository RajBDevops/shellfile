#!/bin/bash
if docker --version >/dev/null 2>&1;then
  echo "docker is already installed"
else 
  echo "docker is not installed, now install"
  sudo apt update -y
  sudo apt install docker.io -y
  docker --version
  sudo systemctl start docker
  sudo systemctl enable docker
  sudo usermod -aG docker ubuntu
  echo "docker has been installed"
fi
