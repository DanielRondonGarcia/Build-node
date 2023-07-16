#!/bin/bash
docker run --rm -it -v $(pwd):/build node:latest "$@"