#!/bin/bash

cat ./data/customer.csv | awk -F, 'NR==1; NR > 1 && $11 ~ /[1-9]$/' | head -n 10

