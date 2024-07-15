#!/bin/bash

cat ./data/store.csv | awk -F, 'NR==1; NR > 1 && $5 ~ /横浜/'

