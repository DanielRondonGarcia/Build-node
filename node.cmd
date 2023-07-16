@echo off
docker run --rm -it -v %cd%:/build build/node:latest %*