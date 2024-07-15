#!/bin/bash

cat ./data/store.csv | awk -F, 'NR==1; NR >1 && $1 ~ /^S14/' | head -n 10

