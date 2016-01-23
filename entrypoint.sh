#!/bin/bash
chown -R ssh-tunnel.ssh-tunnel /home/ssh-tunnel/.ssh
su ssh-tunnel -c "autossh -M $MONITOR -nNTx -L 11111:localhost:$PORT $DEST"
