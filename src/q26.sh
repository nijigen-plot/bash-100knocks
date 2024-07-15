#!/bin/bash

echo "customer_id,max_sales_ymd,min_sales_ymd";


maxdata=$(tail -n +2 ./data/receipt.csv | LC_ALL=C sort -t, -k6 -k1rn | awk -F, '
{
	if (prev != $6) {
		print $6","$1
		prev = $6
	}
}
')

# printf "%s\n" "$maxdata"

mindata=$(tail -n +2 ./data/receipt.csv | LC_ALL=C sort -t, -k6 -k1n | awk -F, '
{
	if (prev != $6) {
		print $6","$1
		prev = $6
	}
}
')

# printf "%s\n" "$mindata"

printf "%s\n" $maxdata > /tmp/maxdata.txt
printf "%s\n" $mindata > /tmp/mindata.txt
paste -d, /tmp/maxdata.txt /tmp/mindata.txt > /tmp/minmaxdata.txt

cut -d "," -f 1,2,4 /tmp/minmaxdata.txt | awk -F, '
{
	if ($2 != $3) {
		print $0
	}	
}
' | head
