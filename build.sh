#!/bin/bash
echo Building ssh-tunnel ...
cd ssh-tunnel
sudo docker build -t sappho/ssh-tunnel .
echo Building ssh-tunnel-ldap ...
cd ../ssh-tunnel-ldap
sudo docker build -t sappho/ssh-tunnel-ldap .
