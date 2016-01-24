#!/bin/bash
. /opt/proxy.sh
autossh -M $MONITOR -nNTx $PROXY $DEST
