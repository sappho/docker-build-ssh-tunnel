#!/bin/bash
docker build -t sappho/ssh-tunnel base
docker build -t sappho/ssh-tunnel-ldap ldap
