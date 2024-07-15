#!/bin/bash

cut -d ',' -f 1,6,7,8,9 ./data/receipt.csv | awk -F, 'NR==1; NR > 1 && $2 == "CS018205000001" && ($5 >= 1000 || $4 >= 5)'

