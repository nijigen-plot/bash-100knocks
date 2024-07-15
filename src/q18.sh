#!/bin/bash

head -n 1 ./data/customer.csv; cat ./data/customer.csv | awk -F, 'NR > 1' | LS_ALL=C sort -t$',' -k5,5r | head -n 10

