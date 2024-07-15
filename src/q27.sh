#!/bin/bash

echo "store_code,sum_amount,count_amount";
tail -n +2 ./data/receipt.csv | awk -F, '
{
        if($0 != "") {
                a[$3]+=$9; # sum amount by $3 column
				b[$3]+=1;
        }
}
END {
        for(i in a) {
                print i","a[i]","b[i]","(a[i] / b[i]);
        }
}
' | LC_ALL=C sort -t$',' -k4,4nr | head -n 5
