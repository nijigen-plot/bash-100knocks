#!/bin/bash

cut -d ',' -f 1,6,7,9 ./data/receipt.csv | sed '1s/sales_ymd/sales_date/' | head -n 10

