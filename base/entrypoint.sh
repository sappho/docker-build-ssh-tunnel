#!/bin/bash
chmod 600 /root/.ssh/*
ls -l /root/.ssh/
autossh -M $MONITOR -nNTx $PROXY $DEST
