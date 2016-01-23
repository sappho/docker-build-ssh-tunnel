#!/bin/bash
su ssh-tunnel -c "autossh -M 20000 -nNTx -L 11111:localhost:$PORT $DEST"
