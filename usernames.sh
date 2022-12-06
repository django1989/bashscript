#!/usr/bin/env bash

file=/etc/passwd
userName=$(cat $file | awk -F ":" '{if (($7 == "/bin/bash") || ($7 == "/bin/sh")) print $1 }')
echo -e "$userName \n" | tr -s "\n" | nl
