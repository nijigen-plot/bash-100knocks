#!/bin/bash

head -n 1 ./data/customer.csv; cat ./data/customer.csv | LC_ALL=C sort -t$',' -k5 | head -n 10

