#!/bin/bash
chmod 600 /root/.ssh/*
echo Check SSH file permissions ...
ls -l /root/.ssh/
echo Running: autossh -M $MONITOR -nNTx $PROXY $DEST
autossh -M $MONITOR -nNTx $PROXY $DEST
