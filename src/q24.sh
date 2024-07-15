#!/bin/bash

echo "customer_id,max_sales_ymd";
tail -n +2 ./data/receipt.csv | awk -F, '
{
	if(a[$6] < $1) { # Undifined variable are initialized to "" or 0. there is no problen in this case.
		a[$6]=$1;
	}
}
END {
	for(i in a) {
		print i","a[i];
	}
}
' | head -n 10
