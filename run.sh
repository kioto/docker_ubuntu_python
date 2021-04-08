#!/bin/sh

docker run -it -d --name ubuntu_python-1 -p 8889:8888 \
       -v $PWD/work:/root/share ubuntu_20_04_python
