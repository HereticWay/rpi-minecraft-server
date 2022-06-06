#!/usr/bin/env sh

cleanup() {
    echo "Syncing back world..."
    save_world
    clear_readyness
    echo "done."
    exit
}

trap cleanup INT TERM

load_world() {
    /App/load-world.sh
}

save_world() {
    /App/save-world.sh
}

set_readyness() {
    # Signal to the server to know that the world is ready
    touch '/App/world-tmpfs/_ready'
}

clear_readyness() {
    rm -f '/App/world-tmpfs/_ready'
}

# First load the world from the disk
load_world
set_readyness

# Run cron daemon in the foreground
crond -l0 -f
