#!/bin/sh

PROJ=~/CProjects
[ -e $PROJ ] || mkdir -p $PROJ
cd "$PROJ"
[ ! -e ./supla-core ] && git clone https://github.com/SUPLA/supla-core
docker run -v "$PROJ":/CProjects -it devel/supla-core /bin/bash
