#!/bin/bash

cat ./data/store.csv | awk -F, 'NR == 1; NR > 1 && $7 ~ /[0-9]{3}-[0-9]{3}-[0-9]{4}/'

