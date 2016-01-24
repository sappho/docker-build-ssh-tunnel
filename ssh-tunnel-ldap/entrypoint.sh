#!/bin/bash
chown -R ssh-tunnel.ssh-tunnel /home/ssh-tunnel/.ssh
. /opt/ssh-tunnel.sh
su ssh-tunnel -c "autossh -M $MONITOR -nNTx -L 0.0.0.0:389:127.0.0.1:389 $DEST"
