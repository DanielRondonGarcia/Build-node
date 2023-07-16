@echo off
docker run --rm -it -p 3000:3000 -v %cd%:/build ghcr.io/danielrondongarcia/build-node:latest %*
