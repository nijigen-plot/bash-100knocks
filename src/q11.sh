#!/bin/bash

cat ./data/customer.csv | awk -F, 'NR==1; NR > 1 && $1 ~ /1$/' | head -n 10

