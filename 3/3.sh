#!/usr/bin/env bash

awk -F'[:/]' '$3>500 {users[$NF] = users[$NF] " " $1} END {for (shell in users) printf "%s, %s\n", shell, users[shell]}' passwd
