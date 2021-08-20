#!/bin/bash

find data -type f \( -name '*mkv' \) \
     -exec scenedetect --drop-short-scenes -m 1.3s --input {} --output data/taylor --stats {}.stats.csv detect-content --threshold 15 list-scenes \; 
