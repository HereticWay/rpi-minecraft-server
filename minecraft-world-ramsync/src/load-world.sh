#!/usr/bin/env sh

rsync -v -r -t --chown=1000:1000 --chmod=775 /App/world/ /App/world-tmpfs/
