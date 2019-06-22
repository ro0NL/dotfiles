#!/usr/bin/env bash

docker run -it --rm -u $(id -u):$(id -g) -v ${HOME}:${HOME} -e HOME=${HOME} -w ${HOME} ruby sh -c "cd $(realpath --relative-to ${HOME} $(pwd)) && rake"

