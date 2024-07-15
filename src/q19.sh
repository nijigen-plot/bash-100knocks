#!/bin/bash

# Get most large number
compare_amount=$(cat ./data/receipt.csv | awk -F, 'NR > 1' | LC_ALL=C sort -t$',' -k9nr | head -n 1 | awk -F, '{ print $9 }')


# Define rank number
head -n 1 ./data/receipt.csv | awk -F, '{ print $6,$9,"rank"}'; cat ./data/receipt.csv | awk -F, 'NR > 1' | LC_ALL=C sort -t$',' -k9nr | awk -F, -v compare_amount="$compare_amount" '
BEGIN { rank = 0; count = 0; compare_amount = $compare_amount }
{
	if (compare_amount != $9) {
		rank = count + 1;
		compare_amount = $9;
	}
	count++;
	print $6, $9, rank;
}' | head -n 10

