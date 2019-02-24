#!/bin/bash

INDEX=$(condor_q username -global -autoformat Args | grep -n "run_jupyter.sh" | cut -f1 -d:)
SCHEDD=$(condor_q username -global -autoformat GlobalJobId | sed -n ''"$INDEX"'p' | cut -f1 -d#)
ID=$(condor_q username -global -autoformat ClusterId | sed -n ''"$INDEX"'p')
echo "$SCHEDD"
echo "$ID"
condor_ssh_to_job -auto-retry -name "$SCHEDD" -ssh 'ssh -L 8889:localhost:8889 -o ServerAliveInterval=60' "$ID"
