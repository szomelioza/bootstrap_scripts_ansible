#!/bin/bash

DISTRO=$(cat /etc/*release | awk -F= '$1=="NAME" { print $2 }' | tr -d \")

if [ "$DISTRO" = "Amazon Linux" ]; then
    yum update;
    yum install -y python3-pip git;
    pip3 install ansible;
elif [ "$DISTRO" = "Ubuntu" ]; then
    apt update;
    apt install -y ansible git;
fi