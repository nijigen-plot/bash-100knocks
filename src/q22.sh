#!/bin/bash

cat ./data/receipt.csv | awk -F, 'NR > 1 { print $6 }' | LC_ALL=C sort | LC_ALL=C uniq | wc -l

