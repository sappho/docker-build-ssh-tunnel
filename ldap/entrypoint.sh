#!/bin/bash
autossh -M $MONITOR -nNTx -L 0.0.0.0:389:localhost:389 $DEST
