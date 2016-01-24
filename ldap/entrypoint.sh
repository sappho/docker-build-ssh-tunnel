#!/bin/bash
chown -R ssh-tunnel.ssh-tunnel /home/ssh-tunnel/.ssh
su ssh-tunnel -c "autossh -M $MONITOR -nNTx -L 0.0.0.0:389:localhost:389 $DEST"


