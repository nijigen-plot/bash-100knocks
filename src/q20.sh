#!/bin/bash


# Define rank number
head -n 1 ./data/receipt.csv | awk -F, '{ print $6,$9,"rank"}'; cat ./data/receipt.csv | awk -F, 'NR > 1' | LC_ALL=C sort -t$',' -k9,9nr | awk -F, '
BEGIN { rank = 1; }
{
	print $6, $9, rank;
	rank++;
}' | head -n 10

