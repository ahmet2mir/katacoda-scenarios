#!/bin/bash

apt update
apt install -y tree python3.8-venv python3.8-minimal python3.8-dev python3.8 libpython3.8 libpython3.8-dev libpython3.8-minimal libpython3.8-stdlib libpython3.8-testsuite

pip install -U pip

echo 'done' > /opt/katacoda-background-finished
