#!/bin/bash
SCRIPT="$SCRIPT --node-rank $SLURM_NODEID"
eval $SCRIPT