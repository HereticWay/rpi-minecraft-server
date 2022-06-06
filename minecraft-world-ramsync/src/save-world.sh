#!/usr/bin/env sh

rsync -v --exclude '_ready' -r -t --chown=1000:1000 --chmod=775 --delete /App/world-tmpfs/ /App/world/
