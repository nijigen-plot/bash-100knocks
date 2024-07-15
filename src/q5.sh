#!/bin/bash

cut -d ',' -f 1,6,7,9 ./data/receipt.csv | awk -F, 'NR==1; NR > 1 && $2 == "CS018205000001" && $4 >= 1000'

