#!/bin/bash

cat ./data/customer.csv | awk -F, 'NR==1; NR > 1 && $11 ~ /[1-9]$/ && $11 ~ /^[A-F]/' | head -n 10

