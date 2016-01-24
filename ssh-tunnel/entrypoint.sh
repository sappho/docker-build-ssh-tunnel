#!/bin/bash
chown -R ssh-tunnel.ssh-tunnel /home/ssh-tunnel/.ssh
. /opt/ssh-tunnel.sh
su ssh-tunnel -c "autossh -M $MONITOR -nNTx $PROXY $DEST"
