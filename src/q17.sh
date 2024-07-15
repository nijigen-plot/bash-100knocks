#!/bin/bash

head -n 1 ./data/customer.csv; cat ./data/customer.csv | LS_ALL=C sort -t$',' -k5,5 | head -n 10

